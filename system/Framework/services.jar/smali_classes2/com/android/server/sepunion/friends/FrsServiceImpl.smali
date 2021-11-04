.class public Lcom/android/server/sepunion/friends/FrsServiceImpl;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "FrsServiceImpl.java"


# static fields
.field private static final HISTORY_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "FrsImpl"


# instance fields
.field private mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private final mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

.field private final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/sepunion/friends/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

.field private final mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    .line 53
    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Lcom/android/server/sepunion/friends/common/LoggerImpl;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/friends/common/LoggerImpl;-><init>(I)V

    .line 56
    .local v1, "logger":Lcom/android/server/sepunion/friends/common/Logger;
    new-instance v2, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    invoke-direct {v2, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, "accessMgr":Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
    new-instance v3, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;

    invoke-direct {v3, p1, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/common/Logger;)V

    iput-object v3, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 59
    new-instance v3, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;

    invoke-direct {v3}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;-><init>()V

    .line 60
    .local v3, "stringCrypto":Lcom/android/server/sepunion/friends/action/ActionExecutable;
    new-instance v4, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v6, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;

    invoke-direct {v6, p0}, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;-><init>(Lcom/android/server/sepunion/friends/FrsServiceImpl;)V

    invoke-direct {v4, v1, v5, v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;-><init>(Lcom/android/server/sepunion/friends/common/Logger;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V

    .line 62
    .local v4, "accessoryMgr":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;
    new-instance v5, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;

    invoke-direct {v5}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;-><init>()V

    .line 63
    .local v5, "clientStateMgr":Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;
    new-instance v6, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;

    invoke-direct {v6, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;-><init>(Landroid/content/Context;)V

    .line 65
    .local v6, "sysDataMgr":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    new-instance v7, Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-direct {v7, v2, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;-><init>(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;Lcom/android/server/sepunion/friends/common/Logger;)V

    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_de

    .line 66
    invoke-virtual {v7, v4, v8}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [I

    const v10, 0x120002

    aput v10, v9, v0

    .line 72
    invoke-virtual {v7, v5, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v9, 0x4

    new-array v10, v9, [I

    fill-array-data v10, :array_ec

    .line 73
    invoke-virtual {v7, v3, v10}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    check-cast v10, Lcom/android/server/sepunion/friends/action/ActionExecutable;

    new-array v11, v8, [I

    const v12, 0x120005

    aput v12, v11, v0

    .line 78
    invoke-virtual {v7, v10, v11}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-array v9, v9, [I

    fill-array-data v9, :array_f8

    .line 79
    invoke-virtual {v7, v2, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_104

    .line 84
    invoke-virtual {v7, v6, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;

    iget-object v10, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v9, v10}, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V

    new-array v10, v8, [I

    const v11, 0x210002

    aput v11, v10, v0

    .line 91
    invoke-virtual {v7, v9, v10}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;

    iget-object v10, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v9, v10}, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V

    .line 92
    invoke-virtual {v7, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setDefault(Lcom/android/server/sepunion/friends/action/ActionExecutable;)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    .line 94
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 95
    new-instance v7, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-direct {v7, p1, v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    .line 96
    iget-object v7, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    new-array v9, v8, [I

    const v10, 0x12000a

    aput v10, v9, v0

    invoke-virtual {v7, v4, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v7

    new-instance v9, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;

    invoke-direct {v9, p1}, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;-><init>(Landroid/content/Context;)V

    new-array v8, v8, [I

    const v10, 0x210003

    aput v10, v8, v0

    .line 98
    invoke-virtual {v7, v9, v8}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    goto :goto_c9

    .line 102
    :cond_c6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    .line 105
    :goto_c9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    .line 106
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void

    :array_de
    .array-data 4
        0x110001
        0x140001
        0x140002
        0x120012
        0x120001
    .end array-data

    :array_ec
    .array-data 4
        0x120003
        0x120004
        0x120010
        0x120011
    .end array-data

    :array_f8
    .array-data 4
        0x120006
        0x120007
        0x120008
        0x120009
    .end array-data

    :array_104
    .array-data 4
        0x12000b
        0x12000c
        0x12000d
        0x12000e
        0x12000f
        0x120013
    .end array-data
.end method

.method private executeBootPhaseActions()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 154
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    .line 157
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method private getDump()Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "************************************************************************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 124
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->logLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->useSafeString()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 123
    const-string/jumbo v2, "productDev: %s / logLevel: %d  / safeString: %s\n"

    invoke-static {v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_39
    iget-object v1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/common/Dump;

    .line 128
    .local v2, "cur":Lcom/android/server/sepunion/friends/common/Dump;
    invoke-interface {v2, v0}, Lcom/android/server/sepunion/friends/common/Dump;->getDump(Ljava/lang/StringBuilder;)V

    .line 129
    .end local v2    # "cur":Lcom/android/server/sepunion/friends/common/Dump;
    goto :goto_3f

    .line 130
    :cond_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_5a

    .line 131
    const-string v1, "\n************************************************************************"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "args"    # Landroid/os/Bundle;

    .line 244
    const-string v0, "attached"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 245
    .local v0, "isAttached":Z
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 246
    .local v1, "accessoryData":[B
    const-string v2, "extraData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 248
    .local v2, "extraData":[B
    const/4 v3, 0x0

    .line 249
    .local v3, "ret":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v1, :cond_37

    .line 250
    new-instance v4, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;

    invoke-direct {v5, v1, v2, v0}, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;-><init>([B[BZ)V

    .line 251
    invoke-virtual {v4, v5}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/os/Bundle;

    .line 255
    :cond_37
    return-object v3
.end method

.method private isShellEnabled()Z
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static synthetic lambda$7IHRb86vcGQfGvMQPfjLwj89TBg(Lcom/android/server/sepunion/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$hasMappedAccessory$0([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 5
    .param p0, "accessoryData"    # [B
    .param p1, "extraData"    # [B
    .param p2, "isAttached"    # Z
    .param p3, "cmdSvc"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    .line 251
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mappedAccessory([B[BZ)Z

    move-result v0

    return v0
.end method

.method private sendSysEvent(II)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "data"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    const v1, 0x210003

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->createBundle(II)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 188
    return-void

    .line 185
    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    const-string v3, "dump"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    .line 140
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string/jumbo v0, "permission denied - pid[%d] uid[%d]"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    return-void

    .line 145
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->getDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    .line 149
    goto :goto_42

    .line 147
    :catchall_3e
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_42
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FrsImpl"

    const-string v2, "executeAction 0x%x"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    iput p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    .line 165
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_35

    const/16 v0, 0x258

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2a

    goto :goto_4c

    .line 178
    :cond_2a
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    goto :goto_4c

    .line 174
    :cond_2f
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    .line 175
    goto :goto_4c

    .line 167
    :cond_35
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 168
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    .line 170
    :cond_46
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    .line 171
    nop

    .line 181
    :goto_4c
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    .line 219
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_49

    iget-object v0, v9, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_49

    .line 234
    :cond_11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v11, "FrsImpl"

    const-string/jumbo v1, "onShellCommand [start] pid[%d] uid[%d]"

    invoke-static {v11, v1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    iget-object v1, v9, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 236
    new-array v0, v10, [Ljava/lang/Object;

    const-string/jumbo v1, "onShellCommand [end]"

    invoke-static {v11, v1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    return-void

    .line 227
    :cond_49
    :goto_49
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_51

    move-object v2, p3

    goto :goto_52

    :cond_51
    move-object v2, p2

    :goto_52
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 228
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_59
    const-string v0, "No shell command implemented."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_68

    .line 229
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 230
    .end local v1    # "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    move-object/from16 v2, p6

    invoke-virtual {v2, v10, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 231
    return-void

    .line 227
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_68
    move-exception v0

    move-object/from16 v2, p6

    move-object v3, v0

    :try_start_6c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_75

    :catchall_70
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw v3
.end method

.method public onStartUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    .line 193
    return-void
.end method

.method public onStopUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    const/16 v0, 0x3ec

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    .line 214
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwitchUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FrsImpl"

    invoke-static {v3, v0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_28

    .line 205
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    if-nez p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    .line 208
    :cond_28
    const/16 v0, 0x3eb

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    .line 209
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    .line 198
    return-void
.end method
