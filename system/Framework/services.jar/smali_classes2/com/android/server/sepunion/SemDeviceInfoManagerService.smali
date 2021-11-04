.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.super Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;
.source "SemDeviceInfoManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final BUNDLE_KEY_FOR_ALL_USERS:Ljava/lang/String; = "for_all_users"

.field public static final BUNDLE_KEY_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final BUNDLE_KEY_IS_REGISTER:Ljava/lang/String; = "is_register"

.field public static final BUNDLE_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final BUNDLE_KEY_URI:Ljava/lang/String; = "uri"

.field private static final DEBUG:Z = false

.field public static final SEPERATOR:Ljava/lang/String; = ";"

.field private static final SHIPPED:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

.field private final mListenerContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sepunion/eventdelegator/ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field private mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field private final mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    .line 73
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->SHIPPED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 1067
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 82
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemDeviceInfoManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 86
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 87
    return-void
.end method

.method private containsAnyPermission(Ljava/util/ArrayList;Ljava/lang/String;I)Z
    .registers 10
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 222
    .local p1, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    if-nez p2, :cond_6

    goto :goto_27

    .line 226
    :cond_6
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 227
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_26

    .line 229
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    .local v4, "perm":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 231
    invoke-virtual {v1, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 234
    .local v5, "granted":I
    if-nez v5, :cond_23

    .line 235
    const/4 v0, 0x1

    return v0

    .line 228
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "granted":I
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 239
    .end local v3    # "i":I
    :cond_26
    return v0

    .line 223
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "size":I
    :cond_27
    :goto_27
    return v0
.end method

.method private containsPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 207
    .local p1, "packageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 212
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 208
    :cond_a
    :goto_a
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containsPackageName() packageNameList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method private enforeCallingPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 885
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_13

    .line 887
    return-void

    .line 889
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "permissionDenied":Ljava/lang/String;
    sget-object v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 823
    const-string/jumbo v1, "monitor_call_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 824
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e6

    .line 825
    :cond_19
    const-string/jumbo v1, "monitor_activity_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 826
    const-string v1, "component_list"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 827
    .local v1, "listToMonitor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_61

    .line 828
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 829
    .local v3, "cn":Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "monitor_activity_state;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2e

    :cond_60
    goto :goto_77

    .line 833
    :cond_61
    sget-object v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CUSTOM_EVENT_ACTIVITY_STATE] listToMonitor = null. event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v1    # "listToMonitor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :goto_77
    goto :goto_e6

    :cond_78
    const-string/jumbo v1, "monitor_package_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 836
    const-string/jumbo v1, "package_list"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 837
    .local v1, "listToMonitor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_b1

    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 839
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "monitor_package_state;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 840
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_8e

    :cond_b0
    goto :goto_c7

    .line 843
    :cond_b1
    sget-object v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CUSTOM_EVENT_PACKAGE_STATE] listToMonitor = null. event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v1    # "listToMonitor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_c7
    goto :goto_e6

    .line 846
    :cond_c8
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This custom event is not supported yet. event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    .line 849
    :cond_df
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v2, "getCustomEventKey() event is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_e6
    return-object v0
.end method

.method private getCustomEventMessageId(Ljava/lang/String;Z)I
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "register"    # Z

    .line 856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_36

    .line 857
    const-string/jumbo v0, "monitor_call_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 858
    if-eqz p2, :cond_14

    .line 859
    const/4 v0, 0x3

    return v0

    .line 861
    :cond_14
    const/4 v0, 0x4

    return v0

    .line 863
    :cond_16
    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 864
    if-eqz p2, :cond_23

    .line 865
    const/4 v0, 0x7

    return v0

    .line 867
    :cond_23
    const/16 v0, 0x8

    return v0

    .line 869
    :cond_26
    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 870
    if-eqz p2, :cond_33

    .line 871
    const/4 v0, 0x5

    return v0

    .line 873
    :cond_33
    const/4 v0, 0x6

    return v0

    .line 876
    :cond_35
    return v1

    .line 879
    :cond_36
    return v1
.end method

.method private getTag(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 896
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 897
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ""

    .line 898
    .local v1, "tag":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 899
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 900
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_17

    .line 901
    const-string/jumbo v3, "tag"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 904
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_17
    return-object v1
.end method

.method private printNumberOfContentObservers(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 909
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 912
    goto :goto_23

    .line 910
    :catch_1f
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 913
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method private printNumberOfPendingIntents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 919
    .local v1, "container":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 920
    .local v2, "customEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3d

    .line 921
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 922
    .local v4, "event":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 923
    .local v5, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v5, :cond_3c

    .line 924
    iget-object v6, v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 925
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v6, :cond_3c

    .line 926
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v0, v7

    .line 929
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_3c
    goto :goto_17

    .line 932
    :cond_3d
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 933
    .local v3, "intentActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_75

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_75

    .line 934
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 935
    .local v5, "action":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 936
    .local v6, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v6, :cond_74

    .line 937
    iget-object v7, v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 938
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v7, :cond_74

    .line 939
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v0, v8

    .line 942
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_74
    goto :goto_4f

    .line 945
    :cond_75
    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 946
    .local v4, "uries":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    if-eqz v4, :cond_ad

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_ad

    .line 947
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 948
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 949
    .local v7, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v7, :cond_ac

    .line 950
    iget-object v8, v7, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 951
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v8, :cond_ac

    .line 952
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v0, v9

    .line 955
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_ac
    goto :goto_87

    .line 958
    :cond_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    return-void
.end method

.method private registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V
    .registers 26
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "flag"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "checkUserAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 425
    .local p4, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    if-nez v2, :cond_19

    .line 426
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "registerPendingIntentInternal() filter is null. It is ignored."

    invoke-static {v0, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 429
    :cond_19
    if-nez v3, :cond_24

    .line 430
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "registerPendingIntentInternal() pendingIntent is null. It is ignored."

    invoke-static {v0, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 433
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    .line 434
    .local v8, "numActions":I
    if-gtz v8, :cond_33

    .line 435
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "registerPendingIntentInternal() filter has no action. It is ignored."

    invoke-static {v0, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 438
    :cond_33
    if-eqz v4, :cond_56

    and-int/lit8 v0, v4, 0x3

    if-nez v0, :cond_56

    .line 439
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerPendingIntentInternal() flag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is not supported."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 443
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 444
    .local v9, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5d
    if-ge v0, v8, :cond_7a

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 447
    .end local v0    # "i":I
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerPendingIntentInternal() action = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "callingPackage = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", userId = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", flag = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", conditions = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 450
    .local v10, "logMessage":Ljava/lang/String;
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 454
    :try_start_bd
    invoke-virtual {v1, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 455
    .local v0, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    new-instance v12, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 456
    if-nez v4, :cond_c7

    const/4 v13, 0x0

    goto :goto_cc

    :cond_c7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_cc
    invoke-direct {v12, v3, v4, v13}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 457
    .local v12, "pic":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_d0
    if-ge v13, v8, :cond_128

    .line 458
    invoke-virtual {v2, v13}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v14

    .line 459
    .local v14, "action":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f1

    .line 462
    iget-object v15, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 463
    .local v15, "callingPackagesItems":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v15, v6, v12}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 464
    iget-object v2, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v16, v0

    .end local v15    # "callingPackagesItems":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    goto :goto_121

    .line 468
    :cond_f1
    new-instance v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 469
    .local v2, "callingPackagesItem":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v2, v6, v12}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 470
    iget-object v15, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v15, "bundle":Landroid/os/Bundle;
    move-object/from16 v16, v0

    .end local v0    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .local v16, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    const-string/jumbo v0, "intent_action"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v0, "is_register"

    move-object/from16 v17, v2

    .end local v2    # "callingPackagesItem":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .local v17, "callingPackagesItem":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    const/4 v2, 0x1

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    if-eqz p7, :cond_11b

    .line 476
    const-string v0, "for_all_users"

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    :cond_11b
    iget-object v0, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v15}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 457
    .end local v14    # "action":Ljava/lang/String;
    .end local v15    # "bundle":Landroid/os/Bundle;
    .end local v17    # "callingPackagesItem":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :goto_121
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    goto :goto_d0

    .end local v16    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .restart local v0    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    :cond_128
    move-object/from16 v16, v0

    .line 481
    .end local v0    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v12    # "pic":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v13    # "i":I
    monitor-exit v11

    .line 482
    return-void

    .line 481
    :catchall_12c
    move-exception v0

    monitor-exit v11
    :try_end_12e
    .catchall {:try_start_bd .. :try_end_12e} :catchall_12c

    throw v0
.end method

.method private testVerifyNumCustom(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1065
    return-void
.end method

.method private testVerifyNumIntent(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1061
    return-void
.end method

.method private testVerifyNumUri(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1057
    return-void
.end method

.method private unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 21
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 598
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    if-nez v2, :cond_15

    .line 599
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unregisterPendingIntentInternal() filter is null. It is ignored."

    invoke-static {v0, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void

    .line 602
    :cond_15
    if-nez v3, :cond_20

    .line 603
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unregisterPendingIntentInternal() pendingIntent is null. It is ignored."

    invoke-static {v0, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void

    .line 607
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    .line 608
    .local v6, "numActions":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 609
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    if-ge v0, v6, :cond_48

    .line 610
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 612
    .end local v0    # "i":I
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterPendingIntentForIntentAsUser() action = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", callingPackage = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", userId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, "logMessage":Ljava/lang/String;
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v9, 0x0

    .line 618
    .local v9, "isUpdated":Z
    iget-object v10, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 619
    :try_start_7c
    invoke-virtual {v1, v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 620
    .local v0, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 622
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v11, :cond_88

    .line 623
    monitor-exit v10

    return-void

    .line 626
    :cond_88
    :goto_88
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 627
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 628
    .local v12, "key":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 629
    .local v13, "callingPackagesItems":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-nez v13, :cond_bd

    .line 630
    sget-object v14, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item for key \""

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is null"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move-object/from16 v2, p1

    goto :goto_88

    .line 634
    :cond_bd
    invoke-virtual {v13, v4, v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 635
    invoke-virtual {v13}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 636
    iget-object v2, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v14, "intent_action"

    invoke-virtual {v2, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string/jumbo v14, "is_register"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    iget-object v14, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 641
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_e9

    .line 642
    :cond_e4
    iget-object v2, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "callingPackagesItems":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :goto_e9
    move-object/from16 v2, p1

    goto :goto_88

    .line 645
    .end local v0    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ec
    monitor-exit v10

    .line 646
    return-void

    .line 645
    :catchall_ee
    move-exception v0

    monitor-exit v10
    :try_end_f0
    .catchall {:try_start_7c .. :try_end_f0} :catchall_ee

    throw v0
.end method


# virtual methods
.method public clearPendingIntentAsUser(Ljava/lang/String;I)V
    .registers 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 693
    const-string v0, "clearPendingIntentAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingIntentAsUser() callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_2b
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .line 702
    .local v2, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 703
    .local v3, "uriKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 704
    .local v4, "actionKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    .local v5, "customEventKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 707
    .local v7, "uri":Landroid/net/Uri;
    iget-object v9, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 708
    .local v9, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v9, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 709
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_92

    .line 710
    iget-object v10, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "uri"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 714
    const-string/jumbo v11, "is_register"

    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 715
    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v11, 0x1

    invoke-virtual {v8, v11, v10}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 716
    .end local v10    # "bundle":Landroid/os/Bundle;
    goto :goto_97

    .line 717
    :cond_92
    iget-object v8, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v9    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_97
    :goto_97
    goto :goto_54

    .line 722
    :cond_98
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 723
    .local v7, "action":Ljava/lang/String;
    iget-object v9, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 724
    .restart local v9    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v9, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_de

    .line 725
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 726
    iget-object v10, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 729
    .restart local v10    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "intent_action"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string/jumbo v11, "is_register"

    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    iget-object v11, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12, v10}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 732
    .end local v10    # "bundle":Landroid/os/Bundle;
    goto :goto_de

    .line 733
    :cond_d9
    iget-object v10, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .end local v7    # "action":Ljava/lang/String;
    .end local v9    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_de
    :goto_de
    goto :goto_9c

    .line 738
    :cond_df
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 739
    .local v7, "event":Ljava/lang/String;
    iget-object v8, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 740
    .local v8, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v8, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 741
    invoke-virtual {v8}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_109

    .line 742
    iget-object v9, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10e

    .line 744
    :cond_109
    iget-object v9, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .end local v7    # "event":Ljava/lang/String;
    .end local v8    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_10e
    :goto_10e
    goto :goto_e3

    .line 748
    .end local v2    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v3    # "uriKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "actionKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "customEventKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10f
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_111
    move-exception v2

    monitor-exit v1
    :try_end_113
    .catchall {:try_start_2b .. :try_end_113} :catchall_111

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 963
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    if-eqz p3, :cond_bc

    :try_start_5
    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_bc

    .line 965
    sget-boolean v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->SHIPPED:Z

    if-eqz v1, :cond_16

    .line 966
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Device is not in DEV mode."

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25c

    .line 968
    :cond_16
    const/4 v1, 0x0

    aget-object v3, p3, v1

    const-string/jumbo v4, "testmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 969
    aget-object v3, p3, v2

    const-string/jumbo v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 970
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->setTestMode(I)V

    goto/16 :goto_25c

    .line 971
    :cond_34
    aget-object v2, p3, v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 972
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->setTestMode(I)V

    goto/16 :goto_25c

    .line 974
    :cond_46
    const-string v1, "Parameter error!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 976
    :cond_4d
    aget-object v3, p3, v1

    const-string/jumbo v4, "uri"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 977
    array-length v1, p3

    invoke-static {p3, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumUri(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 978
    :cond_64
    aget-object v3, p3, v1

    const-string/jumbo v4, "intent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 979
    array-length v1, p3

    invoke-static {p3, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumIntent(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 980
    :cond_7b
    aget-object v3, p3, v1

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 981
    array-length v1, p3

    invoke-static {p3, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumCustom(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 982
    :cond_91
    aget-object v3, p3, v1

    const-string/jumbo v4, "pending_intents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 983
    aget-object v1, p3, v2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->printNumberOfPendingIntents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 984
    :cond_a3
    aget-object v1, p3, v1

    const-string/jumbo v3, "num_observers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 985
    aget-object v1, p3, v2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->printNumberOfContentObservers(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 987
    :cond_b5
    const-string v1, "Parameter error!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 991
    :cond_bc
    const-string v1, "\n##### SEM DEVICE INFO MANAGER SERVICE #####\n##### (dumpsys sepunion semeventdelegator) #####\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 995
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of containers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dc
    if-ge v2, v1, :cond_257

    .line 998
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 999
    .local v3, "key":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Listener container for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 1002
    .local v4, "container":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    if-eqz v4, :cond_253

    .line 1003
    iget-object v5, v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1004
    .local v5, "customEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_168

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_168

    .line 1005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of custom events: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_131
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_168

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1008
    .local v7, "event":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    iget-object v8, v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 1010
    .local v8, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v8, :cond_167

    .line 1011
    invoke-virtual {v8}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    .end local v7    # "event":Ljava/lang/String;
    .end local v8    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_167
    goto :goto_131

    .line 1016
    :cond_168
    const-string v6, "\n[Intent Action Map]"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    iget-object v6, v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 1018
    .local v6, "intentActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_191

    .line 1019
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    .line 1020
    .local v7, "intentActionSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - Number of intent actions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    .end local v7    # "intentActionSize":I
    :cond_191
    if-eqz v6, :cond_1d4

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_1d4

    .line 1023
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1024
    .local v8, "action":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Intent action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    iget-object v9, v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 1026
    .local v9, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v9, :cond_1d3

    .line 1027
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_1d3
    goto :goto_19d

    .line 1032
    :cond_1d4
    const-string v7, "\n[URI Event Map]"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    iget-object v7, v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1034
    .local v7, "uries":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    if-eqz v7, :cond_23a

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_23a

    .line 1035
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - Number of uries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_203
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_23a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1038
    .local v9, "uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Uri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    iget-object v10, v4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 1040
    .local v10, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v10, :cond_239

    .line 1041
    invoke-virtual {v10}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_239
    goto :goto_203

    .line 1046
    :cond_23a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[End of listener container for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    .end local v3    # "key":I
    .end local v4    # "container":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v5    # "customEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "intentActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "uries":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_253
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_dc

    .line 1050
    .end local v2    # "i":I
    :cond_257
    sget-object v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1052
    .end local v1    # "size":I
    :goto_25c
    monitor-exit v0

    .line 1053
    return-void

    .line 1052
    :catchall_25e
    move-exception v1

    monitor-exit v0
    :try_end_260
    .catchall {:try_start_5 .. :try_end_260} :catchall_25e

    throw v1
.end method

.method public getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .registers 2

    .line 112
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    return-object v0
.end method

.method public getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .registers 5
    .param p1, "userId"    # I

    .line 116
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 118
    .local v1, "container":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    if-nez v1, :cond_18

    .line 119
    new-instance v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    invoke-direct {v2, p1}, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;-><init>(I)V

    move-object v1, v2

    .line 120
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    :cond_18
    monitor-exit v0

    return-object v1

    .line 123
    .end local v1    # "container":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .registers 16
    .param p1, "type"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 753
    const-string v0, "getNumPendingIntentAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "countForUri":I
    const/4 v1, 0x0

    .line 757
    .local v1, "countForIntentAction":I
    const/4 v2, 0x0

    .line 759
    .local v2, "countForCustomEvent":I
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    .line 761
    .local v3, "container":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 762
    .local v4, "customEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_44

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_44

    .line 763
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 764
    .local v6, "event":Ljava/lang/String;
    iget-object v7, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 765
    .local v7, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v7, :cond_43

    .line 766
    iget-object v8, v7, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 767
    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 768
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v8, :cond_43

    .line 769
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v2, v9

    .line 772
    .end local v6    # "event":Ljava/lang/String;
    .end local v7    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_43
    goto :goto_1e

    .line 775
    :cond_44
    iget-object v5, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 776
    .local v5, "intentActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_7c

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_7c

    .line 777
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 778
    .local v7, "action":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 779
    .local v8, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v8, :cond_7b

    .line 780
    iget-object v9, v8, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 781
    invoke-virtual {v9, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 782
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v9, :cond_7b

    .line 783
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v1, v10

    .line 786
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_7b
    goto :goto_56

    .line 789
    :cond_7c
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 790
    .local v6, "uries":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    if-eqz v6, :cond_b4

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_b4

    .line 791
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 792
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 793
    .local v9, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v9, :cond_b3

    .line 794
    iget-object v10, v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 795
    invoke-virtual {v10, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 796
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v10, :cond_b3

    .line 797
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v0, v11

    .line 800
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_b3
    goto :goto_8e

    .line 803
    :cond_b4
    if-eqz p1, :cond_da

    const/4 v7, 0x1

    if-eq p1, v7, :cond_d9

    const/4 v7, 0x2

    if-eq p1, v7, :cond_d8

    const/4 v7, 0x3

    if-eq p1, v7, :cond_d7

    .line 813
    sget-object v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNumPendingIntent(): Invalid type request. Requested type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v7, -0x1

    return v7

    .line 811
    :cond_d7
    return v2

    .line 809
    :cond_d8
    return v1

    .line 807
    :cond_d9
    return v0

    .line 805
    :cond_da
    add-int v7, v0, v1

    add-int/2addr v7, v2

    return v7
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 92
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 91
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 89
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 93
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 94
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 95
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 96
    return-void
.end method

.method public registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .registers 16
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "flag"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 418
    .local p4, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "registerPendingIntent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 419
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V

    .line 421
    return-void
.end method

.method public registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 23
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 494
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    if-nez v2, :cond_17

    .line 495
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "registerPendingIntentForCustomEventAsUser() event is null. It is ignored."

    invoke-static {v0, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 498
    :cond_17
    if-nez v3, :cond_22

    .line 499
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "registerPendingIntentForCustomEventAsUser() pendingIntent is null. It is ignored."

    invoke-static {v0, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 502
    :cond_22
    if-nez v4, :cond_53

    .line 503
    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 504
    :cond_36
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerPendingIntentForCustomEventAsUser() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has no Bundle. It is ignored."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 507
    :cond_53
    const-string/jumbo v0, "registerPendingIntentForCustomEventAsUser"

    invoke-direct {v1, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPendingIntentForCustomEventAsUser() event = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", tag = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, "logMessage":Ljava/lang/String;
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {v1, v2, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v8

    .line 515
    .local v8, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 516
    :try_start_90
    invoke-virtual {v1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 517
    .local v0, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_98
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 518
    .local v11, "key":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_be

    .line 519
    iget-object v12, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 520
    .local v12, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v12, v5, v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 521
    iget-object v13, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    nop

    .end local v12    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    goto :goto_f7

    .line 523
    :cond_be
    const/4 v12, 0x0

    .line 524
    .local v12, "isObserverRegistered":Z
    iget-object v13, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 525
    .local v13, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_de

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 526
    .local v15, "existingKey":Ljava/lang/String;
    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_dd

    .line 527
    const/4 v12, 0x1

    .line 528
    goto :goto_de

    .line 530
    .end local v15    # "existingKey":Ljava/lang/String;
    :cond_dd
    goto :goto_c9

    .line 532
    :cond_de
    :goto_de
    if-nez v12, :cond_ea

    .line 533
    const/4 v14, 0x1

    invoke-direct {v1, v2, v14}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v14

    .line 534
    .local v14, "msg":I
    iget-object v15, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v15, v14, v4}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 537
    .end local v14    # "msg":I
    :cond_ea
    new-instance v14, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v14}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 538
    .local v14, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v14, v5, v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 539
    iget-object v15, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "isObserverRegistered":Z
    .end local v13    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :goto_f7
    goto :goto_98

    .line 542
    .end local v0    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    :cond_f8
    monitor-exit v9

    .line 543
    return-void

    .line 542
    :catchall_fa
    move-exception v0

    monitor-exit v9
    :try_end_fc
    .catchall {:try_start_90 .. :try_end_fc} :catchall_fa

    throw v0
.end method

.method public registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 14
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 410
    const-string/jumbo v0, "registerPendingIntentForIntentAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 411
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V

    .line 413
    return-void
.end method

.method public registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 14
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 487
    const-string/jumbo v0, "registerPendingIntentForIntentForAllUsers"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 488
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V

    .line 490
    return-void
.end method

.method public registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 371
    if-nez p1, :cond_b

    .line 372
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPendingIntentForUriAsUser() uri is null. It is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 375
    :cond_b
    if-nez p2, :cond_16

    .line 376
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPendingIntentForUriAsUser() pendingIntent is null. It is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 379
    :cond_16
    const-string/jumbo v0, "registerPendingIntentForUriAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerPendingIntentForUriAsUser() uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_5b
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .line 388
    .local v2, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 389
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 390
    .local v3, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v3, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 391
    iget-object v4, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    nop

    .end local v3    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    goto :goto_af

    .line 393
    :cond_79
    new-instance v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 394
    .restart local v3    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    invoke-virtual {v3, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 395
    iget-object v4, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "uri"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    const-string/jumbo v5, "is_register"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    const-string/jumbo v5, "notify_for_descendants"

    .line 401
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "notify_for_descendants"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 400
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 404
    .end local v2    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v3    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :goto_af
    monitor-exit v1

    .line 405
    return-void

    .line 404
    :catchall_b1
    move-exception v2

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_5b .. :try_end_b3} :catchall_b1

    throw v2
.end method

.method public reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V
    .registers 23
    .param p1, "item"    # Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .param p2, "state"    # I
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .line 312
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    if-eqz v2, :cond_a3

    .line 313
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 314
    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v5, v0

    .line 315
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 316
    .local v7, "key":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 317
    .local v8, "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    move-object v10, v0

    .line 318
    .local v10, "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const/16 v17, 0x0

    .line 319
    .local v17, "code":I
    invoke-virtual {v10}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    move-object v15, v0

    .line 320
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    .line 321
    .local v14, "intent":Landroid/content/Intent;
    const-string v0, "call_state"

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string/jumbo v0, "phone_number"

    move-object/from16 v13, p3

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_56
    .catchall {:try_start_b .. :try_end_56} :catchall_a0

    .line 324
    :try_start_56
    iget-object v12, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_58
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_56 .. :try_end_58} :catch_90
    .catchall {:try_start_56 .. :try_end_58} :catchall_a0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v11, v15

    move/from16 v13, v17

    move-object/from16 v18, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move-object v2, v15

    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    move-object v15, v0

    :try_start_62
    invoke-virtual/range {v11 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportCallStateChanged() state = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_62 .. :try_end_8d} :catch_8e
    .catchall {:try_start_62 .. :try_end_8d} :catchall_a0

    .line 331
    .end local v0    # "logMessage":Ljava/lang/String;
    goto :goto_97

    .line 329
    :catch_8e
    move-exception v0

    goto :goto_94

    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v15    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_90
    move-exception v0

    move-object/from16 v18, v14

    move-object v2, v15

    .line 330
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :goto_94
    :try_start_94
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 332
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v17    # "code":I
    .end local v18    # "intent":Landroid/content/Intent;
    :goto_97
    move-object/from16 v2, p1

    goto :goto_30

    .line 333
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_9a
    move-object/from16 v2, p1

    goto/16 :goto_16

    .line 334
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9e
    monitor-exit v4

    goto :goto_ab

    :catchall_a0
    move-exception v0

    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_a0

    throw v0

    .line 336
    :cond_a3
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportCallStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_ab
    return-void
.end method

.method public reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .registers 23
    .param p1, "item"    # Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "isResumed"    # Z

    .line 283
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_a3

    .line 284
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 285
    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v5, v0

    .line 286
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 287
    .local v7, "key":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 288
    .local v8, "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    move-object v10, v0

    .line 289
    .local v10, "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const/16 v17, 0x0

    .line 290
    .local v17, "code":I
    invoke-virtual {v10}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    move-object v15, v0

    .line 291
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    .line 292
    .local v14, "intent":Landroid/content/Intent;
    const-string v0, "component"

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v0, "is_resumed"

    move/from16 v13, p3

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_56
    .catchall {:try_start_b .. :try_end_56} :catchall_a0

    .line 295
    :try_start_56
    iget-object v12, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_58
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_56 .. :try_end_58} :catch_90
    .catchall {:try_start_56 .. :try_end_58} :catchall_a0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v11, v15

    move/from16 v13, v17

    move-object/from16 v18, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move-object v2, v15

    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    move-object v15, v0

    :try_start_62
    invoke-virtual/range {v11 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportComponentStateChanged() componentName = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_62 .. :try_end_8d} :catch_8e
    .catchall {:try_start_62 .. :try_end_8d} :catchall_a0

    .line 302
    .end local v0    # "logMessage":Ljava/lang/String;
    goto :goto_97

    .line 300
    :catch_8e
    move-exception v0

    goto :goto_94

    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v15    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_90
    move-exception v0

    move-object/from16 v18, v14

    move-object v2, v15

    .line 301
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :goto_94
    :try_start_94
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v17    # "code":I
    .end local v18    # "intent":Landroid/content/Intent;
    :goto_97
    move-object/from16 v2, p1

    goto :goto_30

    .line 304
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_9a
    move-object/from16 v2, p1

    goto/16 :goto_16

    .line 305
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9e
    monitor-exit v4

    goto :goto_ab

    :catchall_a0
    move-exception v0

    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_a0

    throw v0

    .line 307
    :cond_a3
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportComponentStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_ab
    return-void
.end method

.method public reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "item"    # Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .line 341
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_a4

    .line 342
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 343
    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v5, v0

    .line 344
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 345
    .local v7, "key":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 346
    .local v8, "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    move-object v10, v0

    .line 347
    .local v10, "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const/16 v17, 0x0

    .line 348
    .local v17, "code":I
    invoke-virtual {v10}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    move-object v15, v0

    .line 349
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    .line 350
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "package_name"

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v0, "package_state"

    move-object/from16 v13, p3

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_a1

    .line 353
    :try_start_57
    iget-object v12, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_59
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_57 .. :try_end_59} :catch_91
    .catchall {:try_start_57 .. :try_end_59} :catchall_a1

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v11, v15

    move/from16 v13, v17

    move-object/from16 v18, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move-object v2, v15

    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    move-object v15, v0

    :try_start_63
    invoke-virtual/range {v11 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportPackageStateChanged() package = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_63 .. :try_end_8e} :catch_8f
    .catchall {:try_start_63 .. :try_end_8e} :catchall_a1

    .line 360
    .end local v0    # "logMessage":Ljava/lang/String;
    goto :goto_98

    .line 358
    :catch_8f
    move-exception v0

    goto :goto_95

    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v15    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_91
    move-exception v0

    move-object/from16 v18, v14

    move-object v2, v15

    .line 359
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :goto_95
    :try_start_95
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 361
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v17    # "code":I
    .end local v18    # "intent":Landroid/content/Intent;
    :goto_98
    move-object/from16 v2, p1

    goto :goto_30

    .line 362
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_9b
    move-object/from16 v2, p1

    goto/16 :goto_16

    .line 363
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9f
    monitor-exit v4

    goto :goto_ac

    :catchall_a1
    move-exception v0

    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_a1

    throw v0

    .line 365
    :cond_a4
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportPackageStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_ac
    return-void
.end method

.method public reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .registers 26
    .param p1, "item"    # Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .param p2, "selfChange"    # Z
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "userId"    # I
    .param p5, "checkingDescendants"    # Z

    .line 243
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_be

    .line 244
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 245
    :try_start_9
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v4, v0

    .line 246
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 247
    .local v6, "key":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 248
    .local v7, "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    move-object v9, v0

    .line 249
    .local v9, "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const/4 v0, 0x0

    .line 250
    .local v0, "notifyForDescendants":Z
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v10

    .line 251
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move-object v15, v11

    .line 252
    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "uri"

    move-object/from16 v14, p3

    invoke-virtual {v15, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    if-eqz p5, :cond_5b

    .line 255
    const-string/jumbo v11, "notify_for_descendants"

    const/4 v12, 0x0

    invoke-virtual {v15, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_bb

    move v0, v11

    move/from16 v17, v0

    goto :goto_5d

    .line 254
    :cond_5b
    move/from16 v17, v0

    .line 258
    .end local v0    # "notifyForDescendants":Z
    .local v17, "notifyForDescendants":Z
    :goto_5d
    if-nez v17, :cond_61

    if-nez p5, :cond_b5

    .line 259
    :cond_61
    const/16 v18, 0x0

    .line 261
    .local v18, "code":I
    if-eqz v17, :cond_71

    .line 262
    :try_start_65
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v11, "Notifying descendants changes."

    invoke-static {v0, v11}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_65 .. :try_end_6c} :catch_6d
    .catchall {:try_start_65 .. :try_end_6c} :catchall_bb

    goto :goto_71

    .line 270
    :catch_6d
    move-exception v0

    move-object/from16 v19, v15

    goto :goto_b2

    .line 265
    :cond_71
    :goto_71
    :try_start_71
    iget-object v12, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_73
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_71 .. :try_end_73} :catch_af
    .catchall {:try_start_71 .. :try_end_73} :catchall_bb

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    move/from16 v13, v18

    move-object v14, v15

    move-object/from16 v19, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    move-object v15, v0

    :try_start_7d
    invoke-virtual/range {v11 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportUriChanged() uri = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v11, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7d .. :try_end_ac} :catch_ad
    .catchall {:try_start_7d .. :try_end_ac} :catchall_bb

    .line 272
    .end local v0    # "logMessage":Ljava/lang/String;
    goto :goto_b5

    .line 270
    :catch_ad
    move-exception v0

    goto :goto_b2

    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    :catch_af
    move-exception v0

    move-object/from16 v19, v15

    .line 271
    .end local v15    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v19    # "intent":Landroid/content/Intent;
    :goto_b2
    :try_start_b2
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 274
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v9    # "pendingIntentCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v17    # "notifyForDescendants":Z
    .end local v18    # "code":I
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_b5
    :goto_b5
    goto/16 :goto_2e

    .line 275
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "listToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_b7
    goto/16 :goto_14

    .line 276
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b9
    monitor-exit v3

    goto :goto_c6

    :catchall_bb
    move-exception v0

    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_bb

    throw v0

    .line 278
    :cond_be
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reportUriChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_c6
    return-void
.end method

.method public sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V
    .registers 24
    .param p1, "item"    # Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    .param p2, "recievedIntent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 127
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_e

    .line 128
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v3, "UnionEventListenerItem is null"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_e
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 132
    :try_start_11
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v4, v0

    .line 133
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_133

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 134
    .local v6, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "dataClearedPackage":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 137
    sget-object v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data cleared package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_1c

    .line 142
    .end local v0    # "dataClearedPackage":Ljava/lang/String;
    :cond_62
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 143
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 144
    .local v7, "pendingIntenWithConditiontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    move-object v9, v0

    .line 145
    .local v9, "pendingIntentWithCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const/4 v0, 0x0

    .line 146
    .local v0, "needToSend":Z
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getFlag()I

    move-result v10

    .line 152
    .local v10, "conditionFlag":I
    if-nez v10, :cond_88

    .line 153
    const/4 v0, 0x1

    move/from16 v13, p3

    move v11, v0

    goto :goto_bc

    .line 154
    :cond_88
    const/4 v11, 0x1

    if-ne v10, v11, :cond_a0

    .line 155
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getConditions()Ljava/util/ArrayList;

    move-result-object v11

    .line 156
    .local v11, "checkPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "packageName":Ljava/lang/String;
    invoke-direct {v1, v11, v12}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->containsPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v13

    move v0, v13

    .line 158
    .end local v11    # "checkPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageName":Ljava/lang/String;
    move/from16 v13, p3

    move v11, v0

    goto :goto_bc

    :cond_a0
    const/4 v11, 0x2

    if-ne v10, v11, :cond_b8

    .line 159
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getConditions()Ljava/util/ArrayList;

    move-result-object v11

    .line 160
    .local v11, "checkPackagePermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12
    :try_end_af
    .catchall {:try_start_11 .. :try_end_af} :catchall_137

    .line 161
    .restart local v12    # "packageName":Ljava/lang/String;
    move/from16 v13, p3

    :try_start_b1
    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->containsAnyPermission(Ljava/util/ArrayList;Ljava/lang/String;I)Z

    move-result v14

    move v0, v14

    .line 162
    .end local v11    # "checkPackagePermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageName":Ljava/lang/String;
    move v11, v0

    goto :goto_bc

    .line 163
    :cond_b8
    move/from16 v13, p3

    const/4 v0, 0x0

    move v11, v0

    .line 166
    .end local v0    # "needToSend":Z
    .local v11, "needToSend":Z
    :goto_bc
    if-nez v11, :cond_bf

    .line 171
    goto :goto_6f

    .line 173
    :cond_bf
    invoke-virtual {v9}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_c3
    .catchall {:try_start_b1 .. :try_end_c3} :catchall_13c

    move-object v12, v0

    .line 176
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_c4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 180
    const-string v14, "action_origin"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v12

    move-object v15, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendIntentAction() action = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", tag = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v1, v12}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "logMessage":Ljava/lang/String;
    sget-object v14, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v14, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/NullPointerException; {:try_start_c4 .. :try_end_124} :catch_125
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c4 .. :try_end_124} :catch_125
    .catchall {:try_start_c4 .. :try_end_124} :catchall_13c

    .line 196
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v2    # "logMessage":Ljava/lang/String;
    goto :goto_129

    .line 194
    :catch_125
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "pendingIntentWithCondition":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v10    # "conditionFlag":I
    .end local v11    # "needToSend":Z
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_129
    move-object/from16 v2, p1

    goto/16 :goto_6f

    .line 144
    :cond_12d
    move/from16 v13, p3

    .line 198
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pendingIntenWithConditiontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    move-object/from16 v2, p1

    goto/16 :goto_1c

    .line 133
    :cond_133
    move/from16 v13, p3

    .line 199
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v3

    .line 200
    return-void

    .line 199
    :catchall_137
    move-exception v0

    move/from16 v13, p3

    :goto_13a
    monitor-exit v3
    :try_end_13b
    .catchall {:try_start_126 .. :try_end_13b} :catchall_13c

    throw v0

    :catchall_13c
    move-exception v0

    goto :goto_13a
.end method

.method public unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 585
    const-string/jumbo v0, "unregisterPendingIntent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 587
    return-void
.end method

.method public unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 16
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 650
    if-nez p1, :cond_b

    .line 651
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterPendingIntentForCustomEventAsUser() event is null. It is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 654
    :cond_b
    if-nez p2, :cond_16

    .line 655
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterPendingIntentForCustomEventAsUser() pendingIntent is null. It is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void

    .line 658
    :cond_16
    if-nez p3, :cond_47

    .line 659
    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 660
    :cond_2a
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPendingIntentForCustomEventAsUser() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has no Bundle. It is ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 663
    :cond_47
    const-string/jumbo v0, "unregisterPendingIntentForCustomEventAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterPendingIntentForCustomEventAsUser() event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 671
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 672
    :try_start_78
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    .line 673
    .local v3, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 674
    .local v5, "key":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 675
    .local v6, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v6, :cond_b5

    .line 676
    invoke-virtual {v6, p4, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 677
    invoke-virtual {v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_af

    .line 678
    iget-object v7, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v7

    .line 680
    .local v7, "message":I
    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v8, v7, p3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 681
    .end local v7    # "message":I
    goto :goto_d1

    .line 682
    :cond_af
    iget-object v7, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 685
    :cond_b5
    sget-object v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "item for key \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :goto_d1
    goto :goto_80

    .line 688
    .end local v3    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    :cond_d2
    monitor-exit v2

    .line 689
    return-void

    .line 688
    :catchall_d4
    move-exception v3

    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_78 .. :try_end_d6} :catchall_d4

    throw v3
.end method

.method public unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 592
    const-string/jumbo v0, "unregisterPendingIntentForIntentAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 593
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 594
    return-void
.end method

.method public unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 547
    if-nez p1, :cond_b

    .line 548
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterPendingIntentForUriAsUser() uri is null. It is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 551
    :cond_b
    if-nez p2, :cond_16

    .line 552
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterPendingIntentForUriAsUser() pendingIntent is null. It is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 555
    :cond_16
    const-string/jumbo v0, "unregisterPendingIntentForUriAsUser"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterPendingIntentForUriAsUser() uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "logMessage":Ljava/lang/String;
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_47
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .line 563
    .local v2, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 564
    .local v3, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v3, :cond_82

    .line 565
    invoke-virtual {v3, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 566
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 567
    iget-object v4, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "uri"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 571
    const-string/jumbo v5, "is_register"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 572
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 573
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_9e

    .line 574
    :cond_7c
    iget-object v4, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    .line 577
    :cond_82
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "item for uri \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\" is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v2    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v3    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :goto_9e
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_a0
    move-exception v2

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_47 .. :try_end_a2} :catchall_a0

    throw v2
.end method
