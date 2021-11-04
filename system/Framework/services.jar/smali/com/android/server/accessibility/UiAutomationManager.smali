.class Lcom/android/server/accessibility/UiAutomationManager;
.super Ljava/lang/Object;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final LOG_TAG:Ljava/lang/String; = "UiAutomationManager"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field private mUiAutomationFlags:I

.field private mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

.field private mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private mUiAutomationServiceOwner:Landroid/os/IBinder;

.field private final mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "UiAutomation"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/UiAutomationManager$1;-><init>(Lcom/android/server/accessibility/UiAutomationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 59
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/UiAutomationManager;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/UiAutomationManager;

    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/UiAutomationManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/UiAutomationManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 43
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/UiAutomationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/UiAutomationManager;

    .line 43
    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/ComponentName;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-object v0
.end method

.method private destroyUiAutomationService()V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v1, :cond_36

    .line 207
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 209
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->onRemoved()V

    .line 210
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->resetLocked()V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 212
    iput v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 213
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    if-eqz v2, :cond_31

    .line 214
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 218
    :cond_31
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 220
    :cond_36
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method


# virtual methods
.method canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 198
    .local v1, "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 199
    if-eqz v1, :cond_b

    .line 200
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 202
    :cond_b
    return-void

    .line 198
    .end local v1    # "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method getRelevantEventTypes()I
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 179
    .local v1, "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 180
    if-nez v1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 181
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->getRelevantEventTypes()I

    move-result v0

    return v0

    .line 179
    .end local v1    # "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getRequestedEventMaskLocked()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_6
    iget v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    return v0
.end method

.method getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 189
    .local v1, "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 190
    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0

    .line 189
    .end local v1    # "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method isTouchExplorationEnabledLocked()Z
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mRequestTouchExplorationMode:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isUiAutomationRunningLocked()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 30
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p5, "id"    # I
    .param p6, "mainHandler"    # Landroid/os/Handler;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "systemActionPerfomer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p11, "awm"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p12, "flags"    # I

    .line 93
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p4

    iget-object v11, v13, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 94
    :try_start_b
    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 96
    iget-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_bd

    if-nez v0, :cond_9c

    .line 102
    :try_start_14
    iget-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v10, 0x0

    invoke-interface {v14, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_8d
    .catchall {:try_start_14 .. :try_end_1a} :catchall_bd

    .line 107
    nop

    .line 109
    move-object/from16 v9, p8

    :try_start_1d
    iput-object v9, v13, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 110
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v7, v13, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_bd

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v16, v11

    move-object/from16 v11, p10

    move-object v15, v12

    move-object/from16 v12, p11

    :try_start_3b
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;-><init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    iput-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 113
    iput-object v14, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_87

    .line 114
    move/from16 v1, p12

    :try_start_44
    iput v1, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 115
    iput-object v15, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_83

    .line 116
    move-object/from16 v2, p2

    :try_start_4a
    iput-object v2, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 117
    iget-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->onAdded()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_c5

    .line 119
    :try_start_51
    iget-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5f} :catch_67
    .catchall {:try_start_51 .. :try_end_5f} :catchall_c5

    .line 125
    nop

    .line 127
    :try_start_60
    iget-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->connectServiceUnknownThread()V

    .line 128
    monitor-exit v16

    .line 129
    return-void

    .line 121
    :catch_67
    move-exception v0

    .line 122
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "UiAutomationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed registering death link: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 124
    monitor-exit v16

    return-void

    .line 128
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_83
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_c3

    :catchall_87
    move-exception v0

    move-object/from16 v2, p2

    move/from16 v1, p12

    goto :goto_c3

    .line 103
    :catch_8d
    move-exception v0

    move/from16 v1, p12

    move-object/from16 v16, v11

    move-object v2, v15

    .line 104
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v3, "UiAutomationManager"

    const-string v4, "Couldn\'t register for the death of a UiTestAutomationService!"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    monitor-exit v16

    return-void

    .line 97
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_9c
    move/from16 v1, p12

    move-object/from16 v16, v11

    move-object v2, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiAutomationService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "already registered!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .end local p1    # "owner":Landroid/os/IBinder;
    .end local p2    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local p5    # "id":I
    .end local p6    # "mainHandler":Landroid/os/Handler;
    .end local p7    # "securityPolicy":Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .end local p8    # "systemSupport":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .end local p9    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local p10    # "systemActionPerfomer":Lcom/android/server/accessibility/SystemActionPerformer;
    .end local p11    # "awm":Lcom/android/server/accessibility/AccessibilityWindowManager;
    .end local p12    # "flags":I
    throw v0

    .line 128
    .restart local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .restart local p1    # "owner":Landroid/os/IBinder;
    .restart local p2    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .restart local p3    # "context":Landroid/content/Context;
    .restart local p4    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local p5    # "id":I
    .restart local p6    # "mainHandler":Landroid/os/Handler;
    .restart local p7    # "securityPolicy":Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .restart local p8    # "systemSupport":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .restart local p9    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local p10    # "systemActionPerfomer":Lcom/android/server/accessibility/SystemActionPerformer;
    .restart local p11    # "awm":Lcom/android/server/accessibility/AccessibilityWindowManager;
    .restart local p12    # "flags":I
    :catchall_bd
    move-exception v0

    move/from16 v1, p12

    move-object/from16 v16, v11

    move-object v2, v15

    :goto_c3
    monitor-exit v16
    :try_end_c4
    .catchall {:try_start_60 .. :try_end_c4} :catchall_c5

    throw v0

    :catchall_c5
    move-exception v0

    goto :goto_c3
.end method

.method sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 150
    :cond_7
    return-void
.end method

.method suppressingAccessibilityServicesLocked()Z
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 6
    .param p1, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_22

    .line 136
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v2, v2, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 137
    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_22

    .line 142
    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 138
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiAutomationService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not registered!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .end local p1    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    throw v1

    .line 143
    .restart local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .restart local p1    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method
