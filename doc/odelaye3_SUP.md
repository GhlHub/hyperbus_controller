Spartan UltraScale+ ODELAYE3 — Corrected Tables and VARIABLE/TIME Cycle-by-Cycle Sequence

Source basis: AMD UG861 family-specific behavior for Spartan UltraScale+.

Core rules
- DELAY_TYPE: FIXED, VARIABLE, VAR_LOAD
- DELAY_FORMAT: TIME or COUNT
- Spartan UltraScale+ DELAY_VALUE range:
  - TIME: 0 to 1100 ps
  - COUNT: 0 to 511 taps
- In VARIABLE or VAR_LOAD, the runtime control interface is clocked by CLK.
- CE/INC can step the delay.
- CNTVALUEOUT is available in VARIABLE and VAR_LOAD.
- In VAR_LOAD, LOAD loads CNTVALUEIN.
- In COUNT mode, EN_VTC must be tied low.

============================================================
Table 1 — Spartan UltraScale+ ODELAYE3 valid combinations
============================================================

| DELAY_TYPE | DELAY_FORMAT | DELAY_VALUE units | Spartan UltraScale+ range | Runtime controls allowed by UG861 | Notes |
|------------|--------------|-------------------|---------------------------|-----------------------------------|-------|
| FIXED      | TIME         | ps                | 0–1100 ps                 | No runtime stepping/loading; RST returns to the attribute value | TIME mode uses calibration/maintenance; this is the most natural fixed-delay use. |
| FIXED      | COUNT        | taps              | 0–511                     | No runtime stepping/loading; RST returns to the attribute value | Uncalibrated fixed tap delay. EN_VTC low in COUNT mode. |
| VARIABLE   | TIME         | ps                | 0–1100 ps initial/reset value | CLK, CE, INC, CNTVALUEOUT, RST, EN_VTC | Valid, but runtime movement is by stepping taps with CE/INC; CLK is required. TIME mode is maintained by BISC. |
| VARIABLE   | COUNT        | taps              | 0–511 initial/reset value | CLK, CE, INC, CNTVALUEOUT, RST | Best debug mode for direct tap stepping. EN_VTC low. |
| VAR_LOAD   | TIME         | ps attribute value; runtime load value still handled through tap count interface | attr 0–1100 ps | CLK, CE, INC, CNTVALUEIN, CNTVALUEOUT, LOAD, RST, EN_VTC | UG861 says VAR_LOAD is suitable for both TIME and COUNT and permits both serial stepping and parallel load. |
| VAR_LOAD   | COUNT        | taps              | 0–511                     | CLK, CE, INC, CNTVALUEIN, CNTVALUEOUT, LOAD, RST | Most straightforward direct read/write mode. EN_VTC low. |

============================================================
Practical cycle-by-cycle sequence using VARIABLE + TIME
============================================================

Assumptions
- DELAY_TYPE = VARIABLE
- DELAY_FORMAT = TIME
- CLK is present and running from a global buffer
- calibration / bring-up for TIME mode is complete
- EN_VTC is being managed per the TIME-mode flow
- you are changing the delay by stepping it, not by parallel load

Signals that matter in this mode
- CLK: required
- CE: step enable
- INC: direction, 1 increment / 0 decrement
- CNTVALUEOUT: readback of current tap count
- RST: returns to the initial DELAY_VALUE
- EN_VTC: used in TIME mode
- LOAD: not part of the practical VARIABLE/TIME step sequence here

-------------------------
One-step increment sequence
-------------------------

| Cycle | EN_VTC | INC | CE | RST | Expected effect |
|-------|--------|-----|----|-----|-----------------|
| N-1   | 0      | 1   | 0  | 0   | Prepare to modify delay in TIME mode |
| N     | 0      | 1   | 1  | 0   | On this CLK edge, request one increment step |
| N+1   | 0      | 1   | 0  | 0   | Stop stepping |
| N+2 to N+4 | 0 | X | 0 | 0 | Allow up to about 3 CLK cycles for update to settle |
| N+5   | 1      | X   | 0  | 0   | Return to VT-compensated operation if desired |

-------------------------
One-step decrement sequence
-------------------------

| Cycle | EN_VTC | INC | CE | RST | Expected effect |
|-------|--------|-----|----|-----|-----------------|
| N-1   | 0      | 0   | 0  | 0   | Prepare to modify delay |
| N     | 0      | 0   | 1  | 0   | On this CLK edge, request one decrement step |
| N+1   | 0      | 0   | 0  | 0   | Stop stepping |
| N+2 to N+4 | 0 | X | 0 | 0 | Wait for readback / update |
| N+5   | 1      | X   | 0  | 0   | Re-enable VT compensation |

-------------------
Multi-step sequence
-------------------

| Cycle range | INC | CE | Effect |
|-------------|-----|----|--------|
| N to N+k-1  | 1 or 0 | 1 | One tap step per CLK while CE remains high |
| N+k         | same | 0 | Stop stepping |
| N+k+1 to N+k+3 | X | 0 | Allow update/readback settling |

---------------------------------
Reset sequence in VARIABLE + TIME
---------------------------------

| Cycle | RST | Effect |
|-------|-----|--------|
| N     | 1   | Asynchronously reset the delay line |
| N+1   | 0   | Release reset |
| N+2 onward | 0 | Delay returns to initial DELAY_VALUE; then resume normal operation |

============================================================
Practical notes for VARIABLE + TIME
============================================================

- CNTVALUEOUT is still a tap-count-style readback, not a direct ps register.
- If your goal is “write exact value, then read exact value back,” VAR_LOAD + COUNT is much easier to debug than VARIABLE + TIME.
- For TIME mode, calibration-maintained flow is part of the architecture, so EN_VTC and successful bring-up matter much more than in COUNT mode.

Minimal practical recipe for VARIABLE + TIME
1. Finish TIME-mode bring-up/calibration.
2. Temporarily take EN_VTC low.
3. Set INC for direction.
4. Pulse CE for one or more CLK cycles.
5. Wait up to ~3 CLK cycles.
6. Observe CNTVALUEOUT.
7. Return EN_VTC high.
