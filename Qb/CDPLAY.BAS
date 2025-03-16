INPUT " do you want to listen to a cd"; cd$
IF cd$ = "y" THEN
  SHELL "c:\sc400\utility\cdplay.exe"
ELSE
  END
END IF

