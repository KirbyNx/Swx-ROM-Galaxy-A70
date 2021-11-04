.class public Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;
.super Ljava/lang/Object;
.source "ExecScreenTurnedOff.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field private static final LOCK_SCREEN_STATE_FILE_NAME:Ljava/lang/String; = "no_lock_screen"

.field private static final TAG:Ljava/lang/String; = "ExecScreenTurnedOff"


# instance fields
.field private final mStateFile:Ljava/io/File;

.field private final mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V
    .registers 5
    .param p1, "svcOp"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 20
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/friends"

    const-string/jumbo v2, "no_lock_screen"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mStateFile:Ljava/io/File;

    .line 21
    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "action"    # I

    .line 25
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ExecScreenTurnedOff"

    const-string/jumbo v2, "no LockScreen"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_15
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, p3, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public executeOnSameThread(I)Z
    .registers 3
    .param p1, "actionNo"    # I

    .line 35
    const/4 v0, 0x0

    return v0
.end method
