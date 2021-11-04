.class public Lcom/android/server/knox/ddar/fsm/StateMachineProxy;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "StateMachineProxy.java"

# interfaces
.implements Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final GET_CURRENT_STATE:Ljava/lang/String; = "GET_CURRENT_STATE"

.field private static final GET_PREVIOUS_STATE:Ljava/lang/String; = "GET_PREVIOUS_STATE"

.field private static final KEY_DUAL_DAR_USER_ID:Ljava/lang/String; = "KEY_DUAL_DAR_USER_ID"

.field private static final KEY_EVENT:Ljava/lang/String; = "KEY_EVENT"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final PROCESS_EVENT:Ljava/lang/String; = "PROCESS_EVENT"

.field private static final TAG:Ljava/lang/String; = "StateMachineProxy"

.field private static mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;


# instance fields
.field private context:Landroid/content/Context;

.field private stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    .line 48
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    .line 49
    .local v0, "activeDualDARUser":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 50
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->setInitialState(ILcom/samsung/android/knox/ddar/fsm/State;)V

    .line 52
    :cond_1a
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->addStateChangeListener(Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/fsm/StateMachineProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    .line 39
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 35
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processEvent(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .line 96
    const-string v0, "KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/fsm/Event;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/fsm/Event;

    move-result-object v0

    .line 98
    .local v0, "event":Lcom/samsung/android/knox/ddar/fsm/Event;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "dualDarUserId":I
    iget-object v2, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->processEvent(Lcom/samsung/android/knox/ddar/fsm/Event;I)Z

    move-result v2

    return v2

    .line 101
    .end local v0    # "event":Lcom/samsung/android/knox/ddar/fsm/Event;
    .end local v1    # "dualDarUserId":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "res":Z
    const/4 v1, -0x1

    .line 67
    .local v1, "dualDarUserId":I
    :try_start_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v2, "out":Landroid/os/Bundle;
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x33660c2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v5, :cond_33

    const v5, 0x52ce508a

    if-eq v4, v5, :cond_29

    const v5, 0x66d24d52

    if-eq v4, v5, :cond_1f

    :cond_1e
    goto :goto_3c

    :cond_1f
    const-string v4, "GET_PREVIOUS_STATE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v3, v6

    goto :goto_3c

    :cond_29
    const-string v4, "PROCESS_EVENT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v3, v7

    goto :goto_3c

    :cond_33
    const-string v4, "GET_CURRENT_STATE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_87

    if-eqz v4, :cond_1e

    move v3, v8

    :goto_3c
    const-string v4, "dual_dar_response"

    if-eqz v3, :cond_7d

    const-string v5, "KEY_STATE"

    const-string v9, "KEY_DUAL_DAR_USER_ID"

    if-eq v3, v8, :cond_63

    if-eq v3, v6, :cond_49

    goto :goto_86

    .line 81
    :cond_49
    :try_start_49
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 82
    iget-object v3, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v3, v1}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->getPreviousState(I)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v3

    .line 83
    .local v3, "previousState":Lcom/samsung/android/knox/ddar/fsm/State;
    if-eqz v3, :cond_57

    move v7, v8

    :cond_57
    move v0, v7

    .line 84
    invoke-virtual {v3}, Lcom/samsung/android/knox/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_86

    .line 74
    .end local v3    # "previousState":Lcom/samsung/android/knox/ddar/fsm/State;
    :cond_63
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 75
    iget-object v3, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v3, v1}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v3

    .line 76
    .local v3, "currentState":Lcom/samsung/android/knox/ddar/fsm/State;
    if-eqz v3, :cond_71

    move v7, v8

    :cond_71
    move v0, v7

    .line 77
    invoke-virtual {v3}, Lcom/samsung/android/knox/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    goto :goto_86

    .line 70
    .end local v3    # "currentState":Lcom/samsung/android/knox/ddar/fsm/State;
    :cond_7d
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->processEvent(Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 71
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_85} :catch_87

    .line 72
    nop

    .line 88
    :goto_86
    return-object v2

    .line 89
    .end local v2    # "out":Landroid/os/Bundle;
    :catch_87
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public onStateChanged(Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/Event;I)V
    .registers 6
    .param p1, "prevState"    # Lcom/samsung/android/knox/ddar/fsm/State;
    .param p2, "currentState"    # Lcom/samsung/android/knox/ddar/fsm/State;
    .param p3, "event"    # Lcom/samsung/android/knox/ddar/fsm/Event;
    .param p4, "dualDarUserId"    # I

    .line 57
    iget-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/DualDARController;->onDualDarStateChanged(Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/Event;I)Z

    .line 58
    return-void
.end method
