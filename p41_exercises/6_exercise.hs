-- Die crack Funktion entschlüsselt die meisten Geheimtexte, welche mit der Caesar-Verschlüsselung codiert
-- wurden. Wenn jedoch der Text kurz ist, oder eine unübliche Häufigkeitsverteilung aufweist, kann die Entschlüsselung fehlschlagen. Finde ein Wort oder einen Text, wo die Entschlüsselung fehlschlägt.
-- Cäsar hat Franz Holers Totenmüggerli als vermeintliche geheime Botschaft abgefangen, und will diese knacken,
-- was kommt dabei raus?

-- 2. Wann funktioniert es nicht?
--- Wenn der Text zu kurz ist (z. B. nur 2–3 Buchstaben), ist die Häufigkeitsverteilung unbrauchbar.
--- Wenn der Text ungewöhnliche Wörter oder falsche Sprache hat, dann stimmt die Vergleichsbasis nicht → Fehlergebnis.
--- Beispiel:
Prelude> crack "xyz"
-- Ergebnis: oft falsch (z. B. "mno"), weil „xyz“ keine deutsche Häufigkeit hat

-- 3. Mit Holers Totenmügerli
--- Das Wort „Totenmüggerli“ hat eine sehr ungewöhnliche Buchstabenkombination.
--- Die Crack-Funktion wird das nicht korrekt zurückübersetzen, sondern irgendein sinnloses Ergebnis liefern (z. B. verstümmelte Wörter), weil die Häufigkeitsanalyse hier nicht greift.
Prelude> crack "Totenmüggerli"
--- Ergebnis: irgendeine „falsche“ Entschlüsselung, nicht das Original.