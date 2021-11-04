.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/display/DisplayManagerService;

    .line 36
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 38
    return-void
.end method

.method private addBrightnessWeights(Ljava/io/PrintWriter;)I
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 213
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_d

    .line 214
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: available for sec long-term model"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "cmdText":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_12
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "cmdArr":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 221
    .local v4, "lux":F
    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 222
    .local v5, "brightness":F
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 223
    .local v6, "durationSec":F
    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 224
    .local v7, "continuity":F
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/android/server/display/DisplayManagerService;->addBrightnessWeights(FFFF)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_3a

    .line 228
    .end local v2    # "cmdArr":[Ljava/lang/String;
    .end local v4    # "lux":F
    .end local v5    # "brightness":F
    .end local v6    # "durationSec":F
    .end local v7    # "continuity":F
    nop

    .line 229
    return v3

    .line 225
    :catch_3a
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: failed to add brightness weights"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    return v1
.end method

.method private doShortTermReset()I
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->doShortTermReset()V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method private getAmbientBrightnessInfo(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "luxText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no lux specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_11
    const/high16 v2, -0x40800000    # -1.0f

    .line 187
    .local v2, "lux":F
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_19

    move v2, v3

    .line 189
    goto :goto_1a

    .line 188
    :catch_19
    move-exception v3

    .line 190
    :goto_1a
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_29

    .line 191
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: lux should be a positive number"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return v1

    .line 194
    :cond_29
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x0

    return v1
.end method

.method private resetBrightnessConfiguration()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->resetBrightnessConfiguration()V

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method private setAmbientColorTemperatureOverride()I
    .registers 6

    .line 162
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "cctText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 164
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no cct specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return v1

    .line 169
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_1d

    .line 173
    .local v1, "cct":F
    nop

    .line 174
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->setAmbientColorTemperatureOverride(F)V

    .line 175
    const/4 v2, 0x0

    return v2

    .line 170
    .end local v1    # "cct":F
    :catch_1d
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: cct should be a number"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    return v1
.end method

.method private setAutoBrightnessLoggingEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .line 152
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setAutoBrightnessLoggingEnabled(Z)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method private setBrightness()I
    .registers 9

    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "brightnessText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no brightness specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_11
    const/high16 v2, -0x40800000    # -1.0f

    .line 123
    .local v2, "brightness":F
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_19

    move v2, v3

    .line 125
    goto :goto_1a

    .line 124
    :catch_19
    move-exception v3

    .line 126
    :goto_1a
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_4d

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_26

    goto :goto_4d

    .line 131
    :cond_26
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    .local v1, "context":Landroid/content/Context;
    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v4, "Permission required to set the display\'s brightness"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 137
    .local v3, "token":J
    :try_start_37
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness_float"

    const/4 v7, -0x2

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_48

    .line 141
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    nop

    .line 143
    const/4 v5, 0x0

    return v5

    .line 141
    :catchall_48
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    throw v5

    .line 127
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "token":J
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v1
.end method

.method private setDisplayWhiteBalanceLoggingEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method private setTestModeEnabled(Z)I
    .registers 4
    .param p1, "enabled"    # Z

    .line 204
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_d

    .line 205
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: available for sec long-term model"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setTestModeEnabled(Z)V

    .line 209
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 42
    if-nez p1, :cond_7

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 45
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 46
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_dc

    :cond_15
    goto/16 :goto_97

    :sswitch_17
    const-string v2, "dwb-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x5

    goto/16 :goto_97

    :sswitch_22
    const-string/jumbo v2, "set-brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v1, v3

    goto/16 :goto_97

    :sswitch_2e
    const-string/jumbo v2, "get-ambient-brightness-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x7

    goto :goto_97

    :sswitch_39
    const-string v2, "ab-short-term-reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x8

    goto :goto_97

    :sswitch_44
    const-string v2, "ab-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x3

    goto :goto_97

    :sswitch_4e
    const-string v2, "ab-test-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xb

    goto :goto_97

    :sswitch_59
    const-string v2, "dwb-set-cct"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x6

    goto :goto_97

    :sswitch_63
    const-string v2, "ab-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x2

    goto :goto_97

    :sswitch_6d
    const-string v2, "dwb-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x4

    goto :goto_97

    :sswitch_77
    const-string v2, "ab-test-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xa

    goto :goto_97

    :sswitch_82
    const-string v2, "ab-add-brightness-weights"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x9

    goto :goto_97

    :sswitch_8d
    const-string/jumbo v2, "reset-brightness-configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v1, v4

    :goto_97
    packed-switch v1, :pswitch_data_10e

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 71
    :pswitch_9f
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setTestModeEnabled(Z)I

    move-result v1

    return v1

    .line 69
    :pswitch_a4
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setTestModeEnabled(Z)I

    move-result v1

    return v1

    .line 67
    :pswitch_a9
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerShellCommand;->addBrightnessWeights(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 65
    :pswitch_ae
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->doShortTermReset()I

    move-result v1

    return v1

    .line 63
    :pswitch_b3
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerShellCommand;->getAmbientBrightnessInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 60
    :pswitch_b8
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setAmbientColorTemperatureOverride()I

    move-result v1

    return v1

    .line 58
    :pswitch_bd
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 56
    :pswitch_c2
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 54
    :pswitch_c7
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 52
    :pswitch_cc
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 50
    :pswitch_d1
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result v1

    return v1

    .line 48
    :pswitch_d6
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result v1

    return v1

    nop

    :sswitch_data_dc
    .sparse-switch
        -0x59bb9cc8 -> :sswitch_8d
        -0x42826ca9 -> :sswitch_82
        -0x3e25a88e -> :sswitch_77
        -0x2b98d0f1 -> :sswitch_6d
        0x1cd1c6dd -> :sswitch_63
        0x327f7a8b -> :sswitch_59
        0x3cff2ed9 -> :sswitch_4e
        0x40f5acce -> :sswitch_44
        0x4af796cb -> :sswitch_39
        0x5370b1fe -> :sswitch_2e
        0x5fa7aa9c -> :sswitch_22
        0x7c0d4adc -> :sswitch_17
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_d1
        :pswitch_cc
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 81
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 85
    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  ab-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Enable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  ab-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Disable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  dwb-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Enable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  dwb-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Disable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "  dwb-set-cct CCT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Sets the ambient color temperature override to CCT (use -1 to disable)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "  get-ambient-brightness-info [lux]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    Gets the ambient brightness thresholds and brightness info."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "  ab-short-term-reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "    Do short-term reset immediately."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "  ab-test-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "    Enable adaptive brightness test mode for sec long-term model."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "  ab-test-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Disable adaptive brightness test mode for sec long-term model."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  ab-add-brightness-weights [lux]:[brightness(0.0f~1.0f)]:[durationSec]:[continuity]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    Add brightness weights directly  for sec long-term model."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 112
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 113
    return-void
.end method
