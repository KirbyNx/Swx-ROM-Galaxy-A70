.class Lcom/android/server/aod/AODManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "AODManagerShellCommand.java"


# static fields
.field private static final AOD_ACTION:Ljava/lang/String; = "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

.field private static final AOD_DOUBLE_TAP:I = 0xb

.field private static final AOD_EXTRA_INFO:Ljava/lang/String; = "info"

.field private static final AOD_EXTRA_LOCATION:Ljava/lang/String; = "location"

.field private static final AOD_LONG_PRESS:I = 0xa

.field private static final AOD_PERMISSION:Ljava/lang/String; = "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

.field private static final AOD_PRESS:I = 0x9

.field private static final AOD_TAP_TO_SHOW:I = 0x8

.field private static final COMMAND_HELP:Ljava/lang/String; = "help"

.field private static final COMMAND_TSP:Ljava/lang/String; = "tsp"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/aod/AODManagerShellCommand;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private infoToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "info"    # I

    .line 87
    packed-switch p1, :pswitch_data_16

    .line 101
    const-string v0, ""

    .local v0, "infoStr":Ljava/lang/String;
    goto :goto_15

    .line 98
    .end local v0    # "infoStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "double tap(11)"

    .line 99
    .restart local v0    # "infoStr":Ljava/lang/String;
    goto :goto_15

    .line 95
    .end local v0    # "infoStr":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "long pres(10)"

    .line 96
    .restart local v0    # "infoStr":Ljava/lang/String;
    goto :goto_15

    .line 92
    .end local v0    # "infoStr":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "press(9)"

    .line 93
    .restart local v0    # "infoStr":Ljava/lang/String;
    goto :goto_15

    .line 89
    .end local v0    # "infoStr":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "tap to show(8)"

    .line 90
    .restart local v0    # "infoStr":Ljava/lang/String;
    nop

    .line 104
    :goto_15
    return-object v0

    :pswitch_data_16
    .packed-switch 0x8
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private runTspEvent()V
    .registers 11

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "x":I
    const/4 v1, 0x0

    .line 110
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "info":I
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 113
    .local v3, "userHandle":Landroid/os/UserHandle;
    packed-switch v2, :pswitch_data_f0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown ACTION_INFO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 118
    :pswitch_2d
    nop

    .line 125
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    if-eqz v4, :cond_8c

    .line 126
    const-string v4, "-x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 127
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    .line 128
    :cond_46
    const-string v4, "-y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 129
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2e

    .line 130
    :cond_57
    const-string v4, "-user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 131
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 132
    .local v4, "userId":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v6

    .line 133
    .end local v4    # "userId":I
    goto :goto_2e

    .line 134
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 139
    :cond_8c
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 140
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aod service commands: runTspEvent : info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerShellCommand;->infoToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "info"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    int-to-float v9, v0

    aput v9, v7, v8

    const/4 v8, 0x1

    int-to-float v9, v1

    aput v9, v7, v8

    const-string/jumbo v8, "location"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 145
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v7, p0, Lcom/android/server/aod/AODManagerShellCommand;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v7, v6, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 147
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x8
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 37
    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 41
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1c1d1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_24

    const v2, 0x30cf41

    if-eq v1, v2, :cond_19

    :cond_18
    goto :goto_2f

    :cond_19
    const-string/jumbo v1, "help"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v4

    goto :goto_30

    :cond_24
    const-string/jumbo v1, "tsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_30

    :goto_2f
    move v1, v0

    :goto_30
    if-eqz v1, :cond_51

    if-eq v1, v4, :cond_4d

    .line 49
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55

    .line 46
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->onHelp()V

    .line 47
    goto :goto_55

    .line 43
    :cond_51
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerShellCommand;->runTspEvent()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_56

    .line 44
    nop

    .line 52
    :goto_55
    return v3

    .line 53
    :catch_56
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 56
    return v0
.end method

.method public onHelp()V
    .registers 4

    .line 62
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 63
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_6
    const-string v2, "aod service commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v2, "NOTE: when aod is shown, the command should should be executed, and -user USER_ID is optional argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v2, "  tsp [ACTION_INFO] [-x X_POSITION] [-y Y_POSITION] [-user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v2, "    Send tsp event with the below arguments."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v2, "      ACTION_INFO"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v2, "          8  : tap to show"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "          9  : press"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v2, "          10 : long press"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v2, "          11 : double tap"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v2, "      X_POSITION : x position with integer value"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v2, "      Y_POSITION : x position with integer value"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v2, "      USER_ID : user id (optional argument"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_5b

    .line 82
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 83
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_5a
    return-void

    .line 62
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_5b
    move-exception v0

    if-eqz v1, :cond_66

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v0
.end method
