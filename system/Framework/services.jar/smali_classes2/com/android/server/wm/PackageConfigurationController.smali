.class public Lcom/android/server/wm/PackageConfigurationController;
.super Ljava/lang/Thread;
.source "PackageConfigurationController.java"


# static fields
.field private static final COMMAND_OPTION_FORCE_UPDATE:Ljava/lang/String; = "ForceUpdate"

.field private static final COMMAND_OPTION_POLICY_RESET:Ljava/lang/String; = "PolicyReset"

.field private static final LOG_BUFFER_SIZE:I = 0xc8

.field private static final PACKAGE_CONFIGURATION_COMMAND:Ljava/lang/String; = "-packageconfiguration"

.field private static final PREFIX_ACTION_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE."

.field private static final SET_POLICY_DISABLED_COMMAND:Ljava/lang/String; = "-setPolicyDisabled"

.field private static final TAG:Ljava/lang/String; = "PackageConfiguration"


# instance fields
.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPolicyDisabled:Z

.field private final mPolicyImplMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PolicyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyRequestQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPolicyRequestQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 96
    const-string v0, "PackageConfigurationUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mLogs:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyRequestQueue:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mTmpPolicyRequestQueue:Ljava/util/Set;

    .line 133
    new-instance v0, Lcom/android/server/wm/PackageConfigurationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PackageConfigurationController$1;-><init>(Lcom/android/server/wm/PackageConfigurationController;)V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 98
    return-void
.end method

.method private initialize()V
    .registers 5

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$xuTIY37V0grB9RKe-fxYg91FVMo;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$xuTIY37V0grB9RKe-fxYg91FVMo;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationController;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x0

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/PackageConfigurationController;->scheduleUpdatePolicyItem(Ljava/lang/String;J)V

    .line 177
    return-void
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/android/server/wm/PolicyImpl;

    .line 211
    const-string v0, "  "

    invoke-virtual {p2, p0, v0}, Lcom/android/server/wm/PolicyImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$executeShellCommand$4(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/android/server/wm/PolicyImpl;

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/wm/PolicyImpl;->updatePolicyItem(Z)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " update forced."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method static synthetic lambda$executeShellCommand$5(Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "impl"    # Lcom/android/server/wm/PolicyImpl;

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/PolicyImpl;->propagateToCallbacks(I)V

    return-void
.end method

.method static synthetic lambda$initialize$1(Landroid/content/IntentFilter;Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V
    .registers 5
    .param p0, "intentFilter"    # Landroid/content/IntentFilter;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/android/server/wm/PolicyImpl;

    .line 172
    invoke-virtual {p2}, Lcom/android/server/wm/PolicyImpl;->init()V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sec.app.policy.UPDATE."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    return-void
.end method


# virtual methods
.method addLogs(ILjava/lang/String;)V
    .registers 11
    .param p1, "priority"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 180
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_9

    .line 181
    const-string v0, "PackageConfiguration"

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    .line 186
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    .line 187
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const/16 v5, 0xb

    .line 188
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/16 v5, 0xc

    .line 189
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/16 v5, 0xd

    .line 190
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xe

    .line 191
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x6

    aput-object p2, v2, v3

    .line 185
    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 195
    :try_start_66
    monitor-enter p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_80

    .line 196
    :try_start_67
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_76

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    :cond_76
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    monitor-exit p0

    .line 203
    goto :goto_9b

    .line 200
    :catchall_7d
    move-exception v1

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_7d

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local p0    # "this":Lcom/android/server/wm/PackageConfigurationController;
    .end local p1    # "priority":I
    .end local p2    # "msg":Ljava/lang/String;
    :try_start_7f
    throw v1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_80

    .line 201
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local p0    # "this":Lcom/android/server/wm/PackageConfigurationController;
    .restart local p1    # "priority":I
    .restart local p2    # "msg":Ljava/lang/String;
    :catch_80
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to add logs, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageConfiguration"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 207
    const-string v0, "PackageConfigurationController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v0, "  "

    .line 209
    .local v0, "innerPrefix":Ljava/lang/String;
    monitor-enter p0

    .line 210
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  PolicyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$oZAQS3PZ8ptl77X2UN0EhzSrj9s;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$oZAQS3PZ8ptl77X2UN0EhzSrj9s;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 213
    const-string v1, "  *** Logs ***"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mLogs:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$pQPxAAHLo2LIc3nxnW1YyLFWCLk;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$pQPxAAHLo2LIc3nxnW1YyLFWCLk;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 216
    :cond_3f
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_41
    move-exception v1

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v1
.end method

.method executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 220
    monitor-enter p0

    .line 221
    :try_start_1
    const-string v0, "-packageconfiguration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_92

    .line 222
    invoke-virtual {p0, p3}, Lcom/android/server/wm/PackageConfigurationController;->dump(Ljava/io/PrintWriter;)V

    .line 223
    array-length v0, p2

    if-ne v0, v2, :cond_90

    .line 224
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 225
    const-string v0, "ForceUpdate"

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 226
    const-string v0, "Started the update."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$9mMfNVZh4Kjf8v1Co81s-1J5j6w;

    invoke-direct {v1, p3}, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$9mMfNVZh4Kjf8v1Co81s-1J5j6w;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_90

    .line 231
    :cond_2e
    const-string v0, "PolicyReset"

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 232
    const-string v0, "Started a policy reset."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/server/wm/PolicyImpl;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 236
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_8b

    .line 237
    array-length v4, v3

    :goto_51
    if-ge v1, v4, :cond_90

    aget-object v5, v3, v1

    .line 238
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "fileName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has been reset. Please restart phone."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_88

    .line 243
    :cond_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " reset failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 247
    :cond_8b
    const-string v1, "The files is null"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_90
    :goto_90
    monitor-exit p0

    return v2

    .line 253
    :cond_92
    const-string v0, "-setPolicyDisabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 254
    array-length v0, p2

    if-ne v0, v2, :cond_d0

    aget-object v0, p2, v1

    if-nez v0, :cond_a2

    goto :goto_d0

    .line 258
    :cond_a2
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 259
    .local v0, "newPolicyDisabled":Z
    iget-boolean v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    if-eq v1, v0, :cond_b5

    .line 260
    iput-boolean v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    .line 261
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;

    invoke-interface {v1, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 264
    :cond_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-setPolicyDisabled PolicyDisabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    goto :goto_d5

    .line 255
    .end local v0    # "newPolicyDisabled":Z
    .end local v1    # "msg":Ljava/lang/String;
    :cond_d0
    :goto_d0
    const-string v0, "Error: -setPolicyDisabled option requires [true/false]"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    :goto_d5
    monitor-exit p0

    return v2

    .line 272
    :cond_d7
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/PolicyImpl;

    .line 273
    .local v3, "impl":Lcom/android/server/wm/PolicyImpl;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/PolicyImpl;->executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 274
    monitor-exit p0

    return v2

    .line 276
    .end local v3    # "impl":Lcom/android/server/wm/PolicyImpl;
    :cond_f5
    goto :goto_e1

    .line 277
    :cond_f6
    monitor-exit p0

    .line 278
    return v1

    .line 277
    :catchall_f8
    move-exception v0

    monitor-exit p0
    :try_end_fa
    .catchall {:try_start_1 .. :try_end_fa} :catchall_f8

    throw v0
.end method

.method public synthetic lambda$scheduleUpdatePolicyItem$0$PackageConfigurationController()V
    .registers 4

    .line 123
    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyRequestQueue:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController;->mTmpPolicyRequestQueue:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mTmpPolicyRequestQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePolicyItem, Queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyRequestQueue:Ljava/util/Set;

    goto :goto_2a

    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyRequestQueue:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method registerPolicy(Lcom/android/server/wm/PolicyImpl;)V
    .registers 4
    .param p1, "impl"    # Lcom/android/server/wm/PolicyImpl;

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mTmpPolicyRequestQueue:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public run()V
    .registers 5

    .line 147
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 148
    invoke-direct {p0}, Lcom/android/server/wm/PackageConfigurationController;->initialize()V

    .line 150
    :goto_8
    monitor-enter p0

    .line 152
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyRequestQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "policyItemName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PolicyImpl;

    .line 154
    .local v2, "impl":Lcom/android/server/wm/PolicyImpl;
    if-eqz v2, :cond_29

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/PolicyImpl;->updatePolicyItem(Z)V

    .line 157
    .end local v1    # "policyItemName":Ljava/lang/String;
    .end local v2    # "impl":Lcom/android/server/wm/PolicyImpl;
    :cond_29
    goto :goto_f

    .line 158
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyRequestQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_32} :catch_35
    .catchall {:try_start_9 .. :try_end_32} :catchall_33

    .line 164
    goto :goto_52

    .line 165
    :catchall_33
    move-exception v0

    goto :goto_54

    .line 161
    :catch_35
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 163
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "What a Terrible Failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 165
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_52
    monitor-exit p0

    goto :goto_8

    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_33

    throw v0
.end method

.method scheduleUpdatePolicyItem(Ljava/lang/String;J)V
    .registers 7
    .param p1, "policyRequest"    # Ljava/lang/String;
    .param p2, "delayMillis"    # J

    .line 116
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1a

    .line 117
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePolicyItem, delayMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 119
    :cond_1a
    if-eqz p1, :cond_21

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mTmpPolicyRequestQueue:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$OFJp0is7czj7_JtjZRAyVebQVO4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$OFJp0is7czj7_JtjZRAyVebQVO4;-><init>(Lcom/android/server/wm/PackageConfigurationController;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method startThread()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyImplMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 109
    const/4 v0, 0x6

    const-string v1, "What a Terrible Failure: Policy is empty."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 110
    return-void

    .line 112
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/PackageConfigurationController;->start()V

    .line 113
    return-void
.end method
