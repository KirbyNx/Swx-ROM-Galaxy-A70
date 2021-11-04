.class public Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "ShellCommandImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellCmdImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .line 21
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    .line 24
    return-void
.end method

.method private executeCommand(Ljava/lang/String;)Z
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getArgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "argList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_27

    .line 45
    new-instance v2, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object v3, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;

    invoke-direct {v3, v1}, Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 46
    .local v2, "retVal":Landroid/os/Bundle;
    if-eqz v2, :cond_27

    .line 47
    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->printMsg(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    .line 52
    .end local v2    # "retVal":Landroid/os/Bundle;
    :cond_27
    return v0
.end method

.method private getArgList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "arg":Ljava/lang/String;
    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 80
    :cond_20
    return-object v0
.end method

.method private getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShellCmdImpl"

    const-string v2, "getReplyMsg"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "paramStr0"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$executeCommand$0(Ljava/util/List;Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 3
    .param p0, "argList"    # Ljava/util/List;
    .param p1, "cmdSvc"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->command(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private printMsg(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 57
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 58
    .local v0, "writer":Ljava/io/PrintWriter;
    if-eqz v0, :cond_1b

    .line 59
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 60
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b

    .line 62
    :cond_18
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .end local v0    # "writer":Ljava/io/PrintWriter;
    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mEnabled:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public onHelp()V
    .registers 2

    .line 90
    const-string/jumbo v0, "help"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    .line 91
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mEnabled:Z

    .line 32
    return-void
.end method
