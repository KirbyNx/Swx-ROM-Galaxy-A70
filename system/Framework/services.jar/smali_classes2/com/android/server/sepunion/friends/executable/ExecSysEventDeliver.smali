.class public Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;
.super Ljava/lang/Object;
.source "ExecSysEventDeliver.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final EVENT_BOOT_COMPLETED:I = 0x3e8

.field public static final EVENT_CLEANUP_USER:I = 0x3ed

.field public static final EVENT_START_USER:I = 0x3e9

.field public static final EVENT_STOP_USER:I = 0x3ec

.field public static final EVENT_SWITCH_USER:I = 0x3eb

.field public static final EVENT_UNLOCK_USER:I = 0x3ea


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static createBundle(II)Landroid/os/Bundle;
    .registers 4
    .param p0, "event"    # I
    .param p1, "data"    # I

    .line 26
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt0"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt1"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "extra"    # I

    .line 31
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 32
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object v0

    .line 33
    .local v0, "cmdSvc":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    if-eqz v0, :cond_21

    .line 34
    :try_start_11
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->sysEvent(Landroid/os/Bundle;)Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_21

    .line 32
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1

    .line 36
    :cond_21
    :goto_21
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    .line 39
    .end local v0    # "cmdSvc":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    :cond_26
    return-object v1
.end method

.method public executeOnSameThread(I)Z
    .registers 3
    .param p1, "action"    # I

    .line 44
    const/4 v0, 0x0

    return v0
.end method
