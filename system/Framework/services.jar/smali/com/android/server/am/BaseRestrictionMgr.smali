.class public Lcom/android/server/am/BaseRestrictionMgr;
.super Ljava/lang/Object;
.source "BaseRestrictionMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field static final RESTRICTION_TYPE_ACTIVITY_BLOCK_AUTORUNBLOCK:I = 0x8

.field static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_ESSENTIAL_INTENT:I = 0x100000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x40000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x20000

.field static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SELF_INTENT:I = 0x80000

.field static final RESTRICTION_TYPE_BROADCAST_PENDING:I = 0x20000000

.field static final RESTRICTION_TYPE_EXCEPT_CARMODE_OFF:I = 0x8000000

.field static final RESTRICTION_TYPE_EXCEPT_CARMODE_ON:I = 0x10000000

.field static final RESTRICTION_TYPE_EXCEPT_LCD_OFF:I = 0x2000000

.field static final RESTRICTION_TYPE_EXCEPT_LCD_ON:I = 0x4000000

.field static final RESTRICTION_TYPE_NONE:I = 0x0

.field static final RESTRICTION_TYPE_PROVIDER_BLOCK_APPLOCKERBLOCK:I = 0x100

.field static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field static final RESTRICTION_TYPE_SERVICE_BLOCK_APPLOCKERBLOCK:I = 0x10

.field static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field private static final SPECIAL_APP_ACTIVE_DEVICE_ADMIN:I = 0x1

.field private static final SPECIAL_APP_BLOCKLIST_TOP_ACTIVITY:I = 0x10

.field private static final SPECIAL_APP_BOUND_APP_WIDGET:I = 0x100

.field private static final SPECIAL_APP_CHINA_APP:I = 0x400

.field private static final SPECIAL_APP_COCKTAIL_BAR:I = 0x8

.field private static final SPECIAL_APP_DATA_CLEARED_APP:I = 0x800

.field private static final SPECIAL_APP_DEFAULT_ALLOW_LIST:I = 0x2000

.field private static final SPECIAL_APP_DEVICE_ADMIN:I = 0x2

.field private static final SPECIAL_APP_FOREGROUND_SERVICE:I = 0x20

.field private static final SPECIAL_APP_NOTIFICATION_LISTENER:I = 0x80

.field private static final SPECIAL_APP_ONGOING_NOTIFICATION:I = 0x40

.field private static final SPECIAL_APP_REMOVABLE_DEVICE_ADMIN:I = 0x4

.field private static final SPECIAL_APP_VPN_APP:I = 0x200

.field private static final SPECIAL_APP_WL_FREECESS_APP:I = 0x1000

.field static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/android/server/am/BaseRestrictionMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/BaseRestrictionMgr$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/BaseRestrictionMgr$1;

    .line 29
    invoke-direct {p0}, Lcom/android/server/am/BaseRestrictionMgr;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/BaseRestrictionMgr;
    .registers 1

    .line 195
    # getter for: Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->access$100()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v0

    return-object v0
.end method

.method private getRestrictionsByCurrentLevel(IZ)I
    .registers 6
    .param p1, "level"    # I
    .param p2, "isLcdOnPolicy"    # Z

    .line 214
    const v0, 0x101c0888

    const/high16 v1, 0x20000000

    packed-switch p1, :pswitch_data_74

    .line 265
    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 263
    :pswitch_a
    const v0, 0x1002220

    return v0

    .line 261
    :pswitch_e
    return v0

    .line 259
    :pswitch_f
    const v0, 0x1000112

    return v0

    .line 257
    :pswitch_13
    const v0, 0x1000220

    return v0

    .line 251
    :pswitch_17
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    .line 252
    const/16 v0, 0x2220

    return v0

    .line 254
    :cond_24
    const v0, 0x1c0880

    return v0

    .line 245
    :pswitch_28
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-nez v1, :cond_36

    .line 246
    const v0, 0x14148110

    return v0

    .line 248
    :cond_36
    return v0

    .line 222
    :pswitch_37
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 223
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 224
    return v1

    .line 226
    :cond_4c
    return v1

    .line 229
    :cond_4d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 231
    if-eqz p2, :cond_65

    .line 232
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 233
    return v1

    .line 235
    :cond_64
    return v1

    .line 238
    :cond_65
    return v0

    .line 241
    :cond_66
    return v0

    .line 216
    :pswitch_67
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 217
    return v1

    .line 219
    :cond_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_67
        :pswitch_37
        :pswitch_28
        :pswitch_17
        :pswitch_8
        :pswitch_13
        :pswitch_f
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method

.method private isBindNotificationListenerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 945
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 946
    return v0

    .line 948
    :cond_4
    const/4 v1, 0x0

    .line 949
    .local v1, "bindNotiListenerPermissionFound":Z
    const/4 v2, 0x0

    .line 951
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 952
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v3, :cond_61

    .line 954
    :try_start_c
    invoke-interface {v3, p2, v0, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    move-object v2, v0

    .line 955
    if-eqz v2, :cond_44

    .line 956
    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "android"

    .line 957
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_45

    if-eqz v0, :cond_44

    .line 958
    const/4 v0, 0x1

    .line 959
    .end local v1    # "bindNotiListenerPermissionFound":Z
    .local v0, "bindNotiListenerPermissionFound":Z
    :try_start_26
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_40} :catch_42

    move v1, v0

    goto :goto_44

    .line 962
    :catch_42
    move-exception v1

    goto :goto_49

    .line 964
    .end local v0    # "bindNotiListenerPermissionFound":Z
    .restart local v1    # "bindNotiListenerPermissionFound":Z
    :cond_44
    :goto_44
    goto :goto_61

    .line 962
    :catch_45
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 963
    .restart local v0    # "bindNotiListenerPermissionFound":Z
    .local v1, "e":Landroid/os/RemoteException;
    :goto_49
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBindNotificationListenerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 967
    .end local v0    # "bindNotiListenerPermissionFound":Z
    .local v1, "bindNotiListenerPermissionFound":Z
    :cond_61
    :goto_61
    return v1
.end method

.method private isCurrentLauncherApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 792
    if-eqz p1, :cond_28

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getHomePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 793
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v0, 0x1

    return v0

    .line 796
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 776
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isJobSchedulerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 900
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 901
    return v0

    .line 903
    :cond_4
    const/4 v1, 0x0

    .line 904
    .local v1, "jobPermissionFound":Z
    const/4 v2, 0x0

    .line 906
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 907
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v3, :cond_61

    .line 909
    :try_start_c
    invoke-interface {v3, p2, v0, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    move-object v2, v0

    .line 910
    if-eqz v2, :cond_44

    .line 911
    const-string v0, "android.permission.BIND_JOB_SERVICE"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "android"

    .line 912
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_45

    if-eqz v0, :cond_44

    .line 913
    const/4 v0, 0x1

    .line 914
    .end local v1    # "jobPermissionFound":Z
    .local v0, "jobPermissionFound":Z
    :try_start_26
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_40} :catch_42

    move v1, v0

    goto :goto_44

    .line 917
    :catch_42
    move-exception v1

    goto :goto_49

    .line 919
    .end local v0    # "jobPermissionFound":Z
    .restart local v1    # "jobPermissionFound":Z
    :cond_44
    :goto_44
    goto :goto_61

    .line 917
    :catch_45
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 918
    .restart local v0    # "jobPermissionFound":Z
    .local v1, "e":Landroid/os/RemoteException;
    :goto_49
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isJobSchedulerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 922
    .end local v0    # "jobPermissionFound":Z
    .local v1, "jobPermissionFound":Z
    :cond_61
    :goto_61
    return v1
.end method

.method private isLauncherableApp(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 853
    const-string v0, "com.baidu.searchbox_samsung"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_73

    const-string v0, "com.bst.floatingmsgproxy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_73

    .line 857
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 858
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_59

    .line 859
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 860
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_3c

    .line 861
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_3c
    return v1

    .line 864
    :cond_3d
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_57

    .line 865
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_57} :catch_5a

    .line 866
    :cond_57
    const/4 v1, 0x0

    return v1

    .line 871
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_59
    goto :goto_72

    .line 869
    :catch_5a
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLaucherableApp exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_72
    return v1

    .line 854
    :cond_73
    :goto_73
    return v1
.end method

.method private isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .registers 16
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "callerUserId"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "hostingType"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "calleeUid"    # I
    .param p7, "policyNum"    # I

    .line 703
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "calleePkgName":Ljava/lang/String;
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 707
    .local v1, "calleeUserId":I
    const-string v2, "Blocked by policy:"

    const/4 v3, -0x1

    if-nez p1, :cond_2b

    .line 708
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_2a

    .line 709
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- Caller is null!!"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2a
    return v3

    .line 714
    :cond_2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3d

    .line 715
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 716
    return v5

    .line 721
    :cond_3d
    const/4 v4, 0x4

    if-eq p7, v4, :cond_55

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    invoke-virtual {v6, p6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v6

    if-nez v6, :cond_55

    .line 722
    return v5

    .line 726
    :cond_55
    const-string/jumbo v6, "startService"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "bindService"

    if-nez v6, :cond_66

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 727
    :cond_66
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 728
    return v5

    .line 732
    :cond_6d
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isSamsungService(Ljava/lang/String;I)Z

    move-result v5

    const-string/jumbo v6, "is Blocked by Policy:"

    if-nez v5, :cond_a0

    .line 734
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_9f

    .line 735
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -- Caller is not samsung!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_9f
    return v3

    .line 737
    :cond_a0
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 738
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_c7

    .line 739
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -- isCalmMode!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_c7
    return v3

    .line 745
    :cond_c8
    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 746
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_eb

    .line 747
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- should Block cases!!"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_eb
    return v3

    .line 752
    :cond_ec
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_16a

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 753
    if-eq p7, v4, :cond_122

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isJobSchedulerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 754
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_121

    .line 755
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- JobSchedulerPackage!!"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_121
    return v3

    .line 759
    :cond_122
    invoke-direct {p0, p1, p3, p5}, Lcom/android/server/am/BaseRestrictionMgr;->isSyncManagerPackage(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 760
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_145

    .line 761
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- SyncManagerPackage!!"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_145
    return v3

    .line 764
    :cond_146
    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isBindNotificationListenerPackage(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 765
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_169

    .line 766
    sget-object v4, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- isBindNotificationListenerPackage!!"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_169
    return v3

    .line 771
    :cond_16a
    const/4 v2, 0x2

    return v2
.end method

.method private isSamsungService(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 832
    const-string/jumbo v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_59

    const-string v0, "com.sec."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "com.samsung."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_59

    .line 838
    :cond_1b
    const-string v0, "com.baidu.BaiduMap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_58

    const-string v0, "com.baidu.searchbox_samsung"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 839
    const-string v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_58

    .line 843
    :cond_35
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 844
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_56

    .line 845
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSamsungService -- SystemPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_56
    return v1

    .line 849
    :cond_57
    return v2

    .line 840
    :cond_58
    :goto_58
    return v2

    .line 833
    :cond_59
    :goto_59
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_74

    .line 834
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSamsungService -- SamsungService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_74
    return v1
.end method

.method private isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;

    .line 782
    if-eqz p1, :cond_25

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 783
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_23

    .line 784
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSelfIntent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 787
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 9
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "action":Ljava/lang/String;
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 878
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 881
    :cond_d
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_39

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 882
    const-string v1, "binderCallingUid"

    const/16 v3, 0x3e8

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 883
    .local v1, "binderCallingUid":I
    if-eq v1, v3, :cond_31

    .line 884
    sget-object v3, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isShouldBlockCase: block AccountAuthenticator"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return v2

    .line 887
    :cond_31
    sget-object v3, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isShouldBlockCase: not block AccountAuthenticator"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v1    # "binderCallingUid":I
    :cond_39
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 891
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p2, p1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 893
    return v2

    .line 896
    :cond_4f
    const/4 v1, 0x0

    return v1
.end method

.method private isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Z
    .registers 10
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callerUserId"    # I
    .param p3, "callee"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "action":Ljava/lang/String;
    if-eqz p4, :cond_d

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 802
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_d
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    if-nez v0, :cond_3a

    .line 806
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->isEnabledAccessibilityApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 807
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v2

    .line 811
    :cond_3a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 812
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1, v2, p3, p1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 814
    return v2

    .line 818
    :cond_4f
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 819
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3, p3, p1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 821
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 822
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return v2

    .line 827
    :cond_86
    const/4 v1, 0x0

    return v1
.end method

.method private isSyncManagerPackage(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 926
    if-nez p1, :cond_4

    .line 927
    const/4 v0, 0x0

    return v0

    .line 929
    :cond_4
    const/4 v0, 0x0

    .line 932
    .local v0, "syncActionFound":Z
    :try_start_5
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.SyncAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "android"

    .line 933
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 934
    const/4 v0, 0x1

    .line 935
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    .line 939
    :cond_3a
    goto :goto_53

    .line 937
    :catch_3b
    move-exception v1

    .line 938
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSyncManagerPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_53
    return v0
.end method

.method private isSystemApp(III)Z
    .registers 6
    .param p1, "callerMaxAdj"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 690
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 695
    return v0

    .line 693
    :cond_4
    if-eqz p3, :cond_a

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 972
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 973
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 975
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_e

    .line 976
    return v0

    .line 979
    :cond_e
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_15

    .line 980
    return v0

    .line 983
    :cond_15
    iget-object v3, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_21} :catch_25

    .line 986
    .local v3, "match":I
    if-ltz v3, :cond_24

    .line 987
    return v4

    .line 990
    :cond_24
    return v0

    .line 991
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "match":I
    :catch_25
    move-exception v1

    .line 992
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSystemPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    iput-object p1, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 204
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 211
    return-void
.end method

.method protected getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 666
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v2, "android.intent.category.INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 672
    .local v4, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_22

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_31

    .line 674
    :cond_22
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 675
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {v0, v1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 679
    :cond_31
    if-eqz v4, :cond_5c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3a

    goto :goto_5c

    .line 682
    :cond_3a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 683
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 684
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 685
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 684
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    return-object v2

    .line 680
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5c
    :goto_5c
    const/4 v2, 0x0

    return-object v2
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseRestrictionMgr;->setContext(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z
    .registers 17
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .param p3, "callerUserId"    # I
    .param p4, "hostingType"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "calleeUserId"    # I

    .line 270
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZ)Z
    .registers 18
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .param p3, "callerUserId"    # I
    .param p4, "hostingType"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "calleeUserId"    # I
    .param p7, "isDynamicBR"    # Z

    .line 275
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZ)Z
    .registers 44
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .param p3, "callerUserId"    # I
    .param p4, "hostingType"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "queueName"    # Ljava/lang/String;
    .param p7, "calleeUserId"    # I
    .param p8, "isDynamicBR"    # Z
    .param p9, "allowBackgroundActivityStarts"    # Z

    .line 282
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 283
    .local v14, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "calleePackage":Ljava/lang/String;
    const/16 v16, 0x0

    .line 286
    .local v16, "reason":Ljava/lang/String;
    const/4 v1, 0x0

    .line 287
    .local v1, "target":Lcom/android/server/am/MARsPackageInfo;
    const/4 v2, 0x0

    .line 288
    .local v2, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    const/4 v3, -0x1

    .line 289
    .local v3, "targetPkgUserId":I
    const/4 v4, -0x1

    .line 290
    .local v4, "targetPkgUid":I
    const/4 v5, -0x1

    .line 292
    .local v5, "targetAutoRun":I
    const/4 v6, 0x0

    .line 293
    .local v6, "isRestricted":Z
    const/4 v7, 0x0

    .line 294
    .local v7, "isFreezed":Z
    const/16 v17, 0x0

    .line 296
    .local v17, "allowType":I
    sget-object v18, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v18

    .line 297
    :try_start_20
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_78d

    move-object/from16 v19, v1

    .end local v1    # "target":Lcom/android/server/am/MARsPackageInfo;
    .local v19, "target":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v0, :cond_b5

    .line 298
    :try_start_2c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_ab

    .line 299
    .local v0, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    if-eqz v0, :cond_a6

    .line 300
    const/16 v20, 0x0

    move/from16 v1, v20

    .local v1, "i":I
    :goto_42
    move-object/from16 v21, v2

    .end local v2    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v21, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    :try_start_44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 301
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_9a

    .line 303
    .end local v21    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v2    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    move-object/from16 v22, v0

    .end local v0    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .local v22, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :try_start_52
    iget-object v0, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-nez v0, :cond_60

    .line 304
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_ab

    move/from16 v23, v3

    .end local v3    # "targetPkgUserId":I
    .local v23, "targetPkgUserId":I
    :try_start_5a
    const-string v3, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    goto :goto_6a

    .line 317
    .end local v23    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :cond_60
    move/from16 v23, v3

    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "targetPkgUserId":I
    iget v0, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    if-eq v13, v0, :cond_71

    const/4 v0, -0x1

    if-ne v13, v0, :cond_6a

    goto :goto_71

    .line 300
    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v22

    move/from16 v3, v23

    goto :goto_42

    .line 318
    :cond_71
    :goto_71
    const/4 v7, 0x1

    .line 319
    const/4 v6, 0x1

    .line 320
    iget v0, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_85

    move v3, v0

    .line 321
    .end local v23    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :try_start_76
    iget v0, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I
    :try_end_78
    .catchall {:try_start_76 .. :try_end_78} :catchall_7d

    move v4, v0

    .line 328
    move/from16 v21, v7

    move-object v7, v2

    goto :goto_bc

    .line 649
    .end local v1    # "i":I
    .end local v22    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :catchall_7d
    move-exception v0

    move-wide/from16 v31, v14

    move-object/from16 v1, v19

    move-object v15, v8

    goto/16 :goto_795

    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "targetPkgUserId":I
    :catchall_85
    move-exception v0

    move-wide/from16 v31, v14

    move-object/from16 v1, v19

    move/from16 v3, v23

    move-object v15, v8

    goto/16 :goto_795

    .line 300
    .end local v2    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v23    # "targetPkgUserId":I
    .restart local v0    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v1    # "i":I
    .restart local v3    # "targetPkgUserId":I
    .restart local v21    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    :cond_8f
    move-object/from16 v22, v0

    move/from16 v23, v3

    .end local v0    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v3    # "targetPkgUserId":I
    .restart local v22    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v23    # "targetPkgUserId":I
    move-object/from16 v33, v21

    move/from16 v21, v7

    move-object/from16 v7, v33

    goto :goto_bc

    .line 649
    .end local v1    # "i":I
    .end local v22    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v23    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :catchall_9a
    move-exception v0

    move/from16 v23, v3

    move-wide/from16 v31, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object v15, v8

    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "targetPkgUserId":I
    goto/16 :goto_795

    .line 299
    .end local v21    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v23    # "targetPkgUserId":I
    .restart local v0    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v2    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v3    # "targetPkgUserId":I
    :cond_a6
    move-object/from16 v22, v0

    move/from16 v23, v3

    .end local v0    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v3    # "targetPkgUserId":I
    .restart local v22    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v23    # "targetPkgUserId":I
    goto :goto_b7

    .line 649
    .end local v22    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v23    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :catchall_ab
    move-exception v0

    move/from16 v23, v3

    move-wide/from16 v31, v14

    move-object/from16 v1, v19

    move-object v15, v8

    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "targetPkgUserId":I
    goto/16 :goto_795

    .line 297
    .end local v23    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :cond_b5
    move/from16 v23, v3

    .line 334
    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "targetPkgUserId":I
    :goto_b7
    move/from16 v21, v7

    move/from16 v3, v23

    move-object v7, v2

    .end local v2    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v23    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    .local v7, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v21, "isFreezed":Z
    :goto_bc
    if-nez v6, :cond_16e

    :try_start_be
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v1, :cond_16e

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-eqz v1, :cond_16e

    .line 336
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 337
    .local v1, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    if-eqz v1, :cond_15c

    .line 338
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_157

    .line 339
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    .line 341
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_104

    .line 342
    move-object/from16 v23, v1

    .end local v1    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v23, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;
    :try_end_fb
    .catchall {:try_start_be .. :try_end_fb} :catchall_161

    move/from16 v24, v3

    .end local v3    # "targetPkgUserId":I
    .local v24, "targetPkgUserId":I
    :try_start_fd
    const-string v3, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, -0x1

    goto :goto_112

    .line 346
    .end local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v24    # "targetPkgUserId":I
    .restart local v1    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "targetPkgUserId":I
    :cond_104
    move-object/from16 v23, v1

    move/from16 v24, v3

    .end local v1    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v24    # "targetPkgUserId":I
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1
    :try_end_10c
    .catchall {:try_start_fd .. :try_end_10c} :catchall_14a

    if-eq v13, v1, :cond_119

    const/4 v1, -0x1

    if-ne v13, v1, :cond_112

    goto :goto_119

    .line 338
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_112
    :goto_112
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v23

    move/from16 v3, v24

    goto :goto_e5

    .line 347
    .restart local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_119
    :goto_119
    const/4 v6, 0x1

    .line 348
    move-object v1, v0

    .line 349
    .end local v19    # "target":Lcom/android/server/am/MARsPackageInfo;
    .local v1, "target":Lcom/android/server/am/MARsPackageInfo;
    :try_start_11b
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3
    :try_end_11f
    .catchall {:try_start_11b .. :try_end_11f} :catchall_13f

    .line 350
    .end local v24    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :try_start_11f
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v19

    move/from16 v4, v19

    .line 351
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v19
    :try_end_129
    .catchall {:try_start_11f .. :try_end_129} :catchall_136

    const/16 v20, 0x1

    xor-int/lit8 v19, v19, 0x1

    move/from16 v5, v19

    .line 352
    move/from16 v19, v4

    move v2, v6

    move-object v6, v1

    move v1, v5

    move v5, v3

    goto :goto_178

    .line 649
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v2    # "i":I
    .end local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :catchall_136
    move-exception v0

    move-object v2, v7

    move-wide/from16 v31, v14

    move/from16 v7, v21

    move-object v15, v8

    goto/16 :goto_795

    .end local v3    # "targetPkgUserId":I
    .restart local v24    # "targetPkgUserId":I
    :catchall_13f
    move-exception v0

    move-object v2, v7

    move-wide/from16 v31, v14

    move/from16 v7, v21

    move/from16 v3, v24

    move-object v15, v8

    goto/16 :goto_795

    .end local v1    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v19    # "target":Lcom/android/server/am/MARsPackageInfo;
    :catchall_14a
    move-exception v0

    move-object v2, v7

    move-wide/from16 v31, v14

    move-object/from16 v1, v19

    move/from16 v7, v21

    move/from16 v3, v24

    move-object v15, v8

    goto/16 :goto_795

    .line 338
    .end local v24    # "targetPkgUserId":I
    .local v1, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v2    # "i":I
    .restart local v3    # "targetPkgUserId":I
    :cond_157
    move-object/from16 v23, v1

    move/from16 v24, v3

    .end local v1    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v24    # "targetPkgUserId":I
    goto :goto_170

    .line 337
    .end local v2    # "i":I
    .end local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v24    # "targetPkgUserId":I
    .restart local v1    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "targetPkgUserId":I
    :cond_15c
    move-object/from16 v23, v1

    move/from16 v24, v3

    .end local v1    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "targetPkgUserId":I
    .restart local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v24    # "targetPkgUserId":I
    goto :goto_170

    .line 649
    .end local v23    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v24    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :catchall_161
    move-exception v0

    move/from16 v24, v3

    move-object v2, v7

    move-wide/from16 v31, v14

    move-object/from16 v1, v19

    move/from16 v7, v21

    move-object v15, v8

    .end local v3    # "targetPkgUserId":I
    .restart local v24    # "targetPkgUserId":I
    goto/16 :goto_795

    .line 334
    .end local v24    # "targetPkgUserId":I
    .restart local v3    # "targetPkgUserId":I
    :cond_16e
    move/from16 v24, v3

    .line 358
    .end local v3    # "targetPkgUserId":I
    .restart local v24    # "targetPkgUserId":I
    :goto_170
    move v1, v5

    move v2, v6

    move-object/from16 v6, v19

    move/from16 v5, v24

    move/from16 v19, v4

    .end local v4    # "targetPkgUid":I
    .end local v24    # "targetPkgUserId":I
    .local v1, "targetAutoRun":I
    .local v2, "isRestricted":Z
    .local v5, "targetPkgUserId":I
    .local v6, "target":Lcom/android/server/am/MARsPackageInfo;
    .local v19, "targetPkgUid":I
    :goto_178
    const/4 v0, 0x0

    if-nez v2, :cond_18c

    .line 359
    :try_start_17b
    monitor-exit v18

    return v0

    .line 649
    :catchall_17d
    move-exception v0

    move v3, v5

    move-wide/from16 v31, v14

    move/from16 v4, v19

    move v5, v1

    move-object v1, v6

    move-object v15, v8

    move v6, v2

    move-object v2, v7

    move/from16 v7, v21

    goto/16 :goto_795

    .line 372
    :cond_18c
    if-eqz p8, :cond_194

    if-eqz v6, :cond_194

    if-nez v21, :cond_194

    .line 373
    monitor-exit v18

    return v0

    .line 378
    :cond_194
    if-eqz v6, :cond_1a0

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-nez v3, :cond_1a0

    if-nez v7, :cond_1a0

    .line 379
    monitor-exit v18

    return v0

    .line 382
    :cond_1a0
    const/16 v20, 0x0

    .line 384
    .local v20, "receivedGCM":Z
    if-eqz v21, :cond_1b0

    .line 385
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v3
    :try_end_1ac
    .catchall {:try_start_17b .. :try_end_1ac} :catchall_17d

    move v1, v3

    move/from16 v23, v1

    goto :goto_1b2

    .line 384
    :cond_1b0
    move/from16 v23, v1

    .line 389
    .end local v1    # "targetAutoRun":I
    .local v23, "targetAutoRun":I
    :goto_1b2
    const/4 v1, 0x4

    if-eqz v6, :cond_1d2

    :try_start_1b5
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_1d2

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    goto :goto_1d7

    .line 649
    .end local v20    # "receivedGCM":Z
    :catchall_1c2
    move-exception v0

    move v3, v5

    move-object v1, v6

    move-wide/from16 v31, v14

    move/from16 v4, v19

    move/from16 v5, v23

    move v6, v2

    move-object v2, v7

    move-object v15, v8

    move/from16 v7, v21

    goto/16 :goto_795

    .line 389
    .restart local v20    # "receivedGCM":Z
    :cond_1d2
    if-eqz v21, :cond_1d6

    move v3, v1

    goto :goto_1d7

    :cond_1d6
    move v3, v0

    :goto_1d7
    move v4, v3

    .line 390
    .local v4, "policyNum":I
    if-eqz v6, :cond_1df

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v3

    goto :goto_1e6

    :cond_1df
    if-eqz v21, :cond_1e5

    if-nez v23, :cond_1e5

    const/4 v3, 0x2

    goto :goto_1e6

    :cond_1e5
    const/4 v3, 0x1

    .line 393
    .local v3, "level":I
    :goto_1e6
    if-eqz v7, :cond_1f0

    iget-boolean v0, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v0, :cond_1f0

    .line 394
    const/16 v3, 0x8

    move v0, v3

    goto :goto_1f1

    .line 397
    :cond_1f0
    move v0, v3

    .end local v3    # "level":I
    .local v0, "level":I
    :goto_1f1
    if-eqz v21, :cond_1f8

    if-eqz v7, :cond_1f8

    iget-boolean v3, v7, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z
    :try_end_1f7
    .catchall {:try_start_1b5 .. :try_end_1f7} :catchall_1c2

    goto :goto_1f9

    :cond_1f8
    const/4 v3, 0x0

    :goto_1f9
    :try_start_1f9
    invoke-direct {v9, v0, v3}, Lcom/android/server/am/BaseRestrictionMgr;->getRestrictionsByCurrentLevel(IZ)I

    move-result v3
    :try_end_1fd
    .catchall {:try_start_1f9 .. :try_end_1fd} :catchall_779

    .line 400
    .local v3, "restrictions":I
    if-ne v4, v1, :cond_205

    and-int/lit8 v1, v3, 0x0

    if-eqz v1, :cond_205

    .line 401
    const/4 v1, 0x0

    .end local v2    # "isRestricted":Z
    .local v1, "isRestricted":Z
    goto :goto_206

    .line 404
    .end local v1    # "isRestricted":Z
    .restart local v2    # "isRestricted":Z
    :cond_205
    move v1, v2

    .end local v2    # "isRestricted":Z
    .restart local v1    # "isRestricted":Z
    :goto_206
    const/high16 v2, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_22c

    .line 405
    const/high16 v17, 0x2000000

    .line 406
    :try_start_20d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-nez v2, :cond_22c

    .line 407
    const/4 v1, 0x0

    goto :goto_22c

    .line 649
    .end local v0    # "level":I
    .end local v3    # "restrictions":I
    .end local v4    # "policyNum":I
    .end local v20    # "receivedGCM":Z
    :catchall_219
    move-exception v0

    move v3, v5

    move-object v2, v7

    move-wide/from16 v31, v14

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move-object v15, v8

    move-object/from16 v33, v6

    move v6, v1

    move-object/from16 v1, v33

    goto/16 :goto_795

    .line 411
    .restart local v0    # "level":I
    .restart local v3    # "restrictions":I
    .restart local v4    # "policyNum":I
    .restart local v20    # "receivedGCM":Z
    :cond_22c
    :goto_22c
    const/high16 v2, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_23e

    .line 412
    const/high16 v17, 0x4000000

    .line 413
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_23e

    .line 414
    const/4 v1, 0x0

    .line 418
    :cond_23e
    const/high16 v2, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_250

    .line 419
    const/high16 v17, 0x8000000

    .line 420
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v2

    if-nez v2, :cond_250

    .line 421
    const/4 v1, 0x0

    .line 425
    :cond_250
    const/high16 v2, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_26c

    .line 426
    const/high16 v17, 0x10000000

    .line 427
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v2
    :try_end_25f
    .catchall {:try_start_20d .. :try_end_25f} :catchall_219

    if-eqz v2, :cond_267

    .line 428
    const/4 v1, 0x0

    move/from16 v25, v17

    move/from16 v17, v1

    goto :goto_270

    .line 427
    :cond_267
    move/from16 v25, v17

    move/from16 v17, v1

    goto :goto_270

    .line 425
    :cond_26c
    move/from16 v25, v17

    move/from16 v17, v1

    .line 432
    .end local v1    # "isRestricted":Z
    .local v17, "isRestricted":Z
    .local v25, "allowType":I
    :goto_270
    if-eqz v17, :cond_672

    .line 433
    const/16 v26, 0x0

    .line 434
    .local v26, "isAllowed":Z
    const/16 v27, 0x0

    .line 436
    .local v27, "isMatchRestriction":Z
    :try_start_276
    const-string v1, "activity"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_27c
    .catchall {:try_start_276 .. :try_end_27c} :catchall_65a

    if-eqz v1, :cond_354

    .line 437
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_296

    .line 438
    const/16 v25, 0x1

    .line 439
    const/16 v27, 0x1

    .line 440
    const/16 v26, 0x0

    move/from16 v28, v0

    move v0, v3

    move/from16 v30, v4

    move v13, v5

    move-object/from16 v29, v7

    move-wide/from16 v31, v14

    move-object v14, v6

    move-object v15, v8

    goto/16 :goto_651

    .line 443
    :cond_296
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_2c4

    .line 444
    const/4 v1, 0x2

    .line 445
    .end local v25    # "allowType":I
    .local v1, "allowType":I
    const/16 v27, 0x1

    .line 446
    :try_start_29d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2ac

    .line 447
    const/16 v26, 0x1

    move/from16 v25, v1

    goto :goto_2c4

    .line 446
    :cond_2ac
    move/from16 v25, v1

    goto :goto_2c4

    .line 649
    .end local v0    # "level":I
    .end local v3    # "restrictions":I
    .end local v4    # "policyNum":I
    .end local v20    # "receivedGCM":Z
    .end local v26    # "isAllowed":Z
    .end local v27    # "isMatchRestriction":Z
    :catchall_2af
    move-exception v0

    move v3, v5

    move-object v2, v7

    move-wide/from16 v31, v14

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move-object v15, v8

    move/from16 v33, v17

    move/from16 v17, v1

    move-object v1, v6

    move/from16 v6, v33

    goto/16 :goto_795

    .line 450
    .end local v1    # "allowType":I
    .restart local v0    # "level":I
    .restart local v3    # "restrictions":I
    .restart local v4    # "policyNum":I
    .restart local v20    # "receivedGCM":Z
    .restart local v25    # "allowType":I
    .restart local v26    # "isAllowed":Z
    .restart local v27    # "isMatchRestriction":Z
    :cond_2c4
    :goto_2c4
    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_2dd

    .line 451
    const/4 v1, 0x4

    .line 452
    .end local v25    # "allowType":I
    .restart local v1    # "allowType":I
    const/4 v2, 0x1

    .line 453
    .end local v27    # "isMatchRestriction":Z
    .local v2, "isMatchRestriction":Z
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v25
    :try_end_2ce
    .catchall {:try_start_29d .. :try_end_2ce} :catchall_2af

    if-eqz v25, :cond_2d9

    .line 454
    const/16 v25, 0x1

    move/from16 v27, v2

    move/from16 v26, v25

    move/from16 v25, v1

    .end local v26    # "isAllowed":Z
    .local v25, "isAllowed":Z
    goto :goto_2dd

    .line 453
    .end local v25    # "isAllowed":Z
    .restart local v26    # "isAllowed":Z
    :cond_2d9
    move/from16 v25, v1

    move/from16 v27, v2

    .line 457
    .end local v1    # "allowType":I
    .end local v2    # "isMatchRestriction":Z
    .local v25, "allowType":I
    .restart local v27    # "isMatchRestriction":Z
    :cond_2dd
    :goto_2dd
    and-int/lit8 v1, v3, 0x8

    if-eqz v1, :cond_344

    .line 458
    const/16 v1, 0x8

    .line 459
    .end local v25    # "allowType":I
    .restart local v1    # "allowType":I
    if-eqz p1, :cond_332

    .line 460
    :try_start_2e5
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    .line 461
    move/from16 v28, v0

    .end local v0    # "level":I
    .local v28, "level":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_2ef
    .catchall {:try_start_2e5 .. :try_end_2ef} :catchall_31d

    .line 460
    move/from16 v25, v1

    .end local v1    # "allowType":I
    .restart local v25    # "allowType":I
    const/4 v1, 0x0

    move/from16 v29, v4

    .end local v4    # "policyNum":I
    .local v29, "policyNum":I
    const/16 v4, 0x8

    :try_start_2f6
    invoke-virtual {v2, v4, v0, v1, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2fa
    .catchall {:try_start_2f6 .. :try_end_2fa} :catchall_30a

    if-eqz v0, :cond_338

    .line 462
    const/16 v27, 0x1

    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move/from16 v30, v29

    move-object v14, v6

    move-object/from16 v29, v7

    move-object v15, v8

    goto/16 :goto_651

    .line 649
    .end local v3    # "restrictions":I
    .end local v20    # "receivedGCM":Z
    .end local v26    # "isAllowed":Z
    .end local v27    # "isMatchRestriction":Z
    .end local v28    # "level":I
    .end local v29    # "policyNum":I
    :catchall_30a
    move-exception v0

    move v3, v5

    move-object v1, v6

    move-object v2, v7

    move-wide/from16 v31, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object v15, v8

    goto/16 :goto_795

    .end local v25    # "allowType":I
    .restart local v1    # "allowType":I
    :catchall_31d
    move-exception v0

    move/from16 v25, v1

    move v3, v5

    move-object v1, v6

    move-object v2, v7

    move-wide/from16 v31, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object v15, v8

    .end local v1    # "allowType":I
    .restart local v25    # "allowType":I
    goto/16 :goto_795

    .line 459
    .end local v25    # "allowType":I
    .restart local v0    # "level":I
    .restart local v1    # "allowType":I
    .restart local v3    # "restrictions":I
    .restart local v4    # "policyNum":I
    .restart local v20    # "receivedGCM":Z
    .restart local v26    # "isAllowed":Z
    .restart local v27    # "isMatchRestriction":Z
    :cond_332
    move/from16 v28, v0

    move/from16 v25, v1

    move/from16 v29, v4

    .line 620
    .end local v0    # "level":I
    .end local v1    # "allowType":I
    .end local v4    # "policyNum":I
    .restart local v25    # "allowType":I
    .restart local v28    # "level":I
    .restart local v29    # "policyNum":I
    :cond_338
    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move/from16 v30, v29

    move-object v14, v6

    move-object/from16 v29, v7

    move-object v15, v8

    goto/16 :goto_651

    .line 457
    .end local v28    # "level":I
    .end local v29    # "policyNum":I
    .restart local v0    # "level":I
    .restart local v4    # "policyNum":I
    :cond_344
    move/from16 v28, v0

    move/from16 v29, v4

    .end local v0    # "level":I
    .end local v4    # "policyNum":I
    .restart local v28    # "level":I
    .restart local v29    # "policyNum":I
    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move/from16 v30, v29

    move-object v14, v6

    move-object/from16 v29, v7

    move-object v15, v8

    goto/16 :goto_651

    .line 467
    .end local v28    # "level":I
    .end local v29    # "policyNum":I
    .restart local v0    # "level":I
    .restart local v4    # "policyNum":I
    :cond_354
    move/from16 v28, v0

    move/from16 v29, v4

    .end local v0    # "level":I
    .end local v4    # "policyNum":I
    .restart local v28    # "level":I
    .restart local v29    # "policyNum":I
    :try_start_358
    const-string/jumbo v0, "startService"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_35f
    .catchall {:try_start_358 .. :try_end_35f} :catchall_65a

    if-nez v0, :cond_5b2

    :try_start_361
    const-string v0, "bindService"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_377

    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move-object v14, v6

    move-object v15, v8

    move/from16 v8, v29

    move-object/from16 v29, v7

    move-object/from16 v7, p6

    goto/16 :goto_5be

    .line 502
    :cond_377
    const-string/jumbo v0, "provider"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_37e
    .catchall {:try_start_361 .. :try_end_37e} :catchall_598

    if-eqz v0, :cond_414

    .line 503
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_3ad

    .line 504
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v0, v3

    .end local v3    # "restrictions":I
    .local v0, "restrictions":I
    move/from16 v3, p3

    move/from16 v30, v29

    .end local v29    # "policyNum":I
    .local v30, "policyNum":I
    move-object/from16 v4, p1

    move v13, v5

    .end local v5    # "targetPkgUserId":I
    .local v13, "targetPkgUserId":I
    move-object/from16 v5, p4

    move-wide/from16 v31, v14

    move-object v14, v6

    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .local v31, "now":J
    move-object/from16 v6, p5

    move-object v15, v7

    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v15, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    move/from16 v7, v19

    move-object/from16 v29, v15

    move-object v15, v8

    .end local v8    # "calleePackage":Ljava/lang/String;
    .local v15, "calleePackage":Ljava/lang/String;
    .local v29, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    move/from16 v8, v30

    :try_start_39f
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1
    :try_end_3a3
    .catchall {:try_start_39f .. :try_end_3a3} :catchall_769

    .line 505
    .local v1, "isPolicyBlocked":I
    if-lez v1, :cond_3b7

    .line 506
    const/16 v26, 0x1

    .line 507
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b7

    .line 508
    const/16 v25, 0x100

    goto :goto_3b7

    .line 503
    .end local v0    # "restrictions":I
    .end local v1    # "isPolicyBlocked":I
    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v30    # "policyNum":I
    .end local v31    # "now":J
    .restart local v3    # "restrictions":I
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v8    # "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    .local v29, "policyNum":I
    :cond_3ad
    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move/from16 v30, v29

    move-object v14, v6

    move-object/from16 v29, v7

    move-object v15, v8

    .line 512
    .end local v3    # "restrictions":I
    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v8    # "calleePackage":Ljava/lang/String;
    .restart local v0    # "restrictions":I
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .local v29, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v30    # "policyNum":I
    .restart local v31    # "now":J
    :cond_3b7
    :goto_3b7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3d0

    .line 513
    const/16 v1, 0x200

    .line 514
    .end local v25    # "allowType":I
    .local v1, "allowType":I
    const/16 v27, 0x1

    .line 515
    :try_start_3bf
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3ce

    .line 516
    const/16 v26, 0x1

    move/from16 v25, v1

    goto :goto_3d0

    .line 515
    :cond_3ce
    move/from16 v25, v1

    .line 519
    .end local v1    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_3d0
    :goto_3d0
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3e9

    .line 520
    const/16 v1, 0x400

    .line 521
    .end local v25    # "allowType":I
    .restart local v1    # "allowType":I
    const/4 v2, 0x1

    .line 522
    .end local v27    # "isMatchRestriction":Z
    .restart local v2    # "isMatchRestriction":Z
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v3
    :try_end_3db
    .catchall {:try_start_3bf .. :try_end_3db} :catchall_5fe

    if-eqz v3, :cond_3e5

    .line 523
    const/4 v3, 0x1

    move/from16 v25, v1

    move/from16 v27, v2

    move/from16 v26, v3

    .end local v26    # "isAllowed":Z
    .local v3, "isAllowed":Z
    goto :goto_3e9

    .line 522
    .end local v3    # "isAllowed":Z
    .restart local v26    # "isAllowed":Z
    :cond_3e5
    move/from16 v25, v1

    move/from16 v27, v2

    .line 526
    .end local v1    # "allowType":I
    .end local v2    # "isMatchRestriction":Z
    .restart local v25    # "allowType":I
    .restart local v27    # "isMatchRestriction":Z
    :cond_3e9
    :goto_3e9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_651

    .line 527
    const/16 v27, 0x1

    .line 528
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v19

    move/from16 v8, v30

    :try_start_3ff
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1
    :try_end_403
    .catchall {:try_start_3ff .. :try_end_403} :catchall_769

    .line 529
    .local v1, "isPolicyBlocked":I
    if-lez v1, :cond_412

    .line 530
    const/4 v2, 0x1

    .line 531
    .end local v26    # "isAllowed":Z
    .local v2, "isAllowed":Z
    const/4 v3, 0x1

    if-ne v1, v3, :cond_410

    .line 532
    const/16 v3, 0x800

    move/from16 v26, v2

    move/from16 v25, v3

    .end local v25    # "allowType":I
    .local v3, "allowType":I
    goto :goto_412

    .line 531
    .end local v3    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_410
    move/from16 v26, v2

    .line 534
    .end local v1    # "isPolicyBlocked":I
    .end local v2    # "isAllowed":Z
    .restart local v26    # "isAllowed":Z
    :cond_412
    :goto_412
    goto/16 :goto_651

    .line 536
    .end local v0    # "restrictions":I
    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v30    # "policyNum":I
    .end local v31    # "now":J
    .local v3, "restrictions":I
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v8    # "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    .local v29, "policyNum":I
    :cond_414
    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move/from16 v30, v29

    move-object v14, v6

    move-object/from16 v29, v7

    move-object v15, v8

    .end local v3    # "restrictions":I
    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v8    # "calleePackage":Ljava/lang/String;
    .restart local v0    # "restrictions":I
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .local v29, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v30    # "policyNum":I
    .restart local v31    # "now":J
    :try_start_41e
    const-string v1, "broadcast"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_424
    .catchall {:try_start_41e .. :try_end_424} :catchall_585

    if-eqz v1, :cond_566

    .line 537
    if-eqz p5, :cond_558

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_432

    move-object/from16 v7, p6

    move/from16 v8, v30

    goto/16 :goto_55c

    .line 543
    :cond_432
    const/4 v1, 0x0

    .line 544
    .end local v26    # "isAllowed":Z
    .local v1, "isAllowed":Z
    const/high16 v2, 0x20000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_462

    .line 545
    const/high16 v2, 0x20000000

    .line 546
    .end local v25    # "allowType":I
    .local v2, "allowType":I
    const/16 v27, 0x1

    .line 547
    :try_start_43c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v15, v13}, Lcom/android/server/am/FreecessController;->isPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_44e

    .line 548
    const/4 v1, 0x1

    move/from16 v25, v2

    goto :goto_462

    .line 547
    :cond_44e
    move/from16 v25, v2

    goto :goto_462

    .line 649
    .end local v0    # "restrictions":I
    .end local v1    # "isAllowed":Z
    .end local v20    # "receivedGCM":Z
    .end local v27    # "isMatchRestriction":Z
    .end local v28    # "level":I
    .end local v30    # "policyNum":I
    :catchall_451
    move-exception v0

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v2

    move-object/from16 v2, v29

    goto/16 :goto_795

    .line 551
    .end local v2    # "allowType":I
    .restart local v0    # "restrictions":I
    .restart local v1    # "isAllowed":Z
    .restart local v20    # "receivedGCM":Z
    .restart local v25    # "allowType":I
    .restart local v27    # "isMatchRestriction":Z
    .restart local v28    # "level":I
    .restart local v30    # "policyNum":I
    :cond_462
    :goto_462
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_47a

    .line 552
    const/16 v2, 0x2000

    .line 553
    .end local v25    # "allowType":I
    .restart local v2    # "allowType":I
    const/16 v27, 0x1

    .line 554
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_478

    .line 555
    const/4 v1, 0x1

    move/from16 v25, v2

    goto :goto_47a

    .line 554
    :cond_478
    move/from16 v25, v2

    .line 558
    .end local v2    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_47a
    :goto_47a
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_48e

    .line 559
    const/16 v2, 0x4000

    .line 560
    .end local v25    # "allowType":I
    .restart local v2    # "allowType":I
    const/16 v27, 0x1

    .line 561
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_48c

    .line 562
    const/4 v1, 0x1

    move/from16 v25, v2

    goto :goto_48e

    .line 561
    :cond_48c
    move/from16 v25, v2

    .line 566
    .end local v2    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_48e
    :goto_48e
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_4ad

    .line 567
    const v2, 0x8000

    .line 568
    .end local v25    # "allowType":I
    .restart local v2    # "allowType":I
    const/16 v27, 0x1

    .line 569
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_4a3
    .catchall {:try_start_43c .. :try_end_4a3} :catchall_451

    if-eqz v3, :cond_4ab

    .line 570
    const/16 v20, 0x1

    .line 571
    const/4 v1, 0x1

    move/from16 v25, v2

    goto :goto_4ad

    .line 569
    :cond_4ab
    move/from16 v25, v2

    .line 576
    .end local v2    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_4ad
    :goto_4ad
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_4f1

    .line 577
    const/high16 v2, 0x20000

    .line 578
    .end local v25    # "allowType":I
    .restart local v2    # "allowType":I
    const/16 v27, 0x1

    .line 580
    move/from16 v8, v30

    const/4 v3, 0x1

    .end local v30    # "policyNum":I
    .local v8, "policyNum":I
    if-ne v8, v3, :cond_4ec

    :try_start_4bb
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    .line 581
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d6

    const-string/jumbo v3, "foreground"
    :try_end_4ca
    .catchall {:try_start_4bb .. :try_end_4ca} :catchall_4d9

    .line 582
    move-object/from16 v7, p6

    :try_start_4cc
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ee

    .line 583
    const/4 v1, 0x1

    move/from16 v25, v2

    goto :goto_4f5

    .line 581
    :cond_4d6
    move-object/from16 v7, p6

    goto :goto_4ee

    .line 649
    .end local v0    # "restrictions":I
    .end local v1    # "isAllowed":Z
    .end local v8    # "policyNum":I
    .end local v20    # "receivedGCM":Z
    .end local v27    # "isMatchRestriction":Z
    .end local v28    # "level":I
    :catchall_4d9
    move-exception v0

    move-object/from16 v7, p6

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v2

    move-object/from16 v2, v29

    goto/16 :goto_795

    .line 580
    .restart local v0    # "restrictions":I
    .restart local v1    # "isAllowed":Z
    .restart local v8    # "policyNum":I
    .restart local v20    # "receivedGCM":Z
    .restart local v27    # "isMatchRestriction":Z
    .restart local v28    # "level":I
    :cond_4ec
    move-object/from16 v7, p6

    .line 588
    :cond_4ee
    :goto_4ee
    move/from16 v25, v2

    goto :goto_4f5

    .line 576
    .end local v2    # "allowType":I
    .end local v8    # "policyNum":I
    .restart local v25    # "allowType":I
    .restart local v30    # "policyNum":I
    :cond_4f1
    move-object/from16 v7, p6

    move/from16 v8, v30

    .line 588
    .end local v30    # "policyNum":I
    .restart local v8    # "policyNum":I
    :goto_4f5
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_50a

    .line 589
    const/high16 v2, 0x80000

    .line 590
    .end local v25    # "allowType":I
    .restart local v2    # "allowType":I
    const/16 v27, 0x1

    .line 591
    invoke-direct {v9, v15, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_508

    .line 592
    const/4 v1, 0x1

    move/from16 v25, v2

    goto :goto_50a

    .line 591
    :cond_508
    move/from16 v25, v2

    .line 596
    .end local v2    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_50a
    :goto_50a
    const/high16 v2, 0x100000

    and-int/2addr v2, v0

    if-eqz v2, :cond_52b

    .line 597
    const/high16 v2, 0x100000

    .line 598
    .end local v25    # "allowType":I
    .restart local v2    # "allowType":I
    const/4 v3, 0x1

    .line 599
    .end local v27    # "isMatchRestriction":Z
    .local v3, "isMatchRestriction":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v15, v10, v4}, Lcom/android/server/am/BaseRestrictionMgr;->isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_51a
    .catchall {:try_start_4cc .. :try_end_51a} :catchall_451

    if-eqz v4, :cond_524

    .line 600
    const/4 v1, 0x1

    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v27, v3

    goto :goto_52d

    .line 599
    :cond_524
    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v27, v3

    goto :goto_52d

    .line 596
    .end local v2    # "allowType":I
    .end local v3    # "isMatchRestriction":Z
    .restart local v25    # "allowType":I
    .restart local v27    # "isMatchRestriction":Z
    :cond_52b
    move/from16 v26, v1

    .line 604
    .end local v1    # "isAllowed":Z
    .restart local v26    # "isAllowed":Z
    :goto_52d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_554

    .line 605
    const/high16 v1, 0x40000

    .line 606
    .end local v25    # "allowType":I
    .local v1, "allowType":I
    const/16 v27, 0x1

    .line 607
    :try_start_536
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_54e

    invoke-direct {v9, v10}, Lcom/android/server/am/BaseRestrictionMgr;->isCurrentLauncherApp(Ljava/lang/String;)Z

    move-result v2
    :try_end_544
    .catchall {:try_start_536 .. :try_end_544} :catchall_5fe

    if-eqz v2, :cond_54e

    .line 608
    const/16 v26, 0x1

    move/from16 v25, v1

    move/from16 v30, v8

    goto/16 :goto_651

    .line 620
    :cond_54e
    move/from16 v25, v1

    move/from16 v30, v8

    goto/16 :goto_651

    .line 604
    .end local v1    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_554
    move/from16 v30, v8

    goto/16 :goto_651

    .line 537
    .end local v8    # "policyNum":I
    .restart local v30    # "policyNum":I
    :cond_558
    move-object/from16 v7, p6

    move/from16 v8, v30

    .line 538
    .end local v30    # "policyNum":I
    .restart local v8    # "policyNum":I
    :goto_55c
    const/16 v25, 0x1000

    .line 539
    const/16 v27, 0x1

    .line 540
    const/16 v26, 0x0

    move/from16 v30, v8

    goto/16 :goto_651

    .line 612
    .end local v8    # "policyNum":I
    .restart local v30    # "policyNum":I
    :cond_566
    move-object/from16 v7, p6

    move/from16 v8, v30

    .end local v30    # "policyNum":I
    .restart local v8    # "policyNum":I
    :try_start_56a
    const-string v1, "backup"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_581

    .line 613
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_581

    .line 614
    const/high16 v25, 0x1000000

    .line 615
    const/16 v27, 0x1

    .line 616
    const/16 v26, 0x0

    move/from16 v30, v8

    goto/16 :goto_651

    .line 620
    :cond_581
    move/from16 v30, v8

    goto/16 :goto_651

    .line 649
    .end local v0    # "restrictions":I
    .end local v8    # "policyNum":I
    .end local v20    # "receivedGCM":Z
    .end local v26    # "isAllowed":Z
    .end local v27    # "isMatchRestriction":Z
    .end local v28    # "level":I
    :catchall_585
    move-exception v0

    move-object/from16 v7, p6

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object/from16 v2, v29

    goto/16 :goto_795

    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v31    # "now":J
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v8, "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    :catchall_598
    move-exception v0

    move v13, v5

    move-object/from16 v29, v7

    move-wide/from16 v31, v14

    move-object/from16 v7, p6

    move-object v14, v6

    move-object v15, v8

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object/from16 v2, v29

    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v8    # "calleePackage":Ljava/lang/String;
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .restart local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v31    # "now":J
    goto/16 :goto_795

    .line 467
    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v31    # "now":J
    .local v3, "restrictions":I
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v8    # "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    .restart local v20    # "receivedGCM":Z
    .restart local v26    # "isAllowed":Z
    .restart local v27    # "isMatchRestriction":Z
    .restart local v28    # "level":I
    .local v29, "policyNum":I
    :cond_5b2
    move v0, v3

    move v13, v5

    move-wide/from16 v31, v14

    move-object v14, v6

    move-object v15, v8

    move/from16 v8, v29

    move-object/from16 v29, v7

    move-object/from16 v7, p6

    .line 468
    .end local v3    # "restrictions":I
    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v0    # "restrictions":I
    .local v8, "policyNum":I
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .local v29, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v31    # "now":J
    :goto_5be
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5e2

    .line 469
    const/16 v27, 0x1

    .line 470
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v19

    move/from16 v30, v8

    .end local v8    # "policyNum":I
    .restart local v30    # "policyNum":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1
    :try_end_5d8
    .catchall {:try_start_56a .. :try_end_5d8} :catchall_769

    .line 471
    .local v1, "isPolicyBlocked":I
    if-lez v1, :cond_5e4

    .line 472
    const/16 v26, 0x1

    .line 473
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e4

    .line 474
    const/16 v25, 0x10

    goto :goto_5e4

    .line 468
    .end local v1    # "isPolicyBlocked":I
    .end local v30    # "policyNum":I
    .restart local v8    # "policyNum":I
    :cond_5e2
    move/from16 v30, v8

    .line 478
    .end local v8    # "policyNum":I
    .restart local v30    # "policyNum":I
    :cond_5e4
    :goto_5e4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_60f

    .line 479
    const/16 v1, 0x20

    .line 480
    .end local v25    # "allowType":I
    .local v1, "allowType":I
    const/16 v27, 0x1

    .line 481
    :try_start_5ec
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5fb

    .line 482
    const/16 v26, 0x1

    move/from16 v25, v1

    goto :goto_60f

    .line 481
    :cond_5fb
    move/from16 v25, v1

    goto :goto_60f

    .line 649
    .end local v0    # "restrictions":I
    .end local v20    # "receivedGCM":Z
    .end local v26    # "isAllowed":Z
    .end local v27    # "isMatchRestriction":Z
    .end local v28    # "level":I
    .end local v30    # "policyNum":I
    :catchall_5fe
    move-exception v0

    move v3, v13

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move-object/from16 v2, v29

    move/from16 v17, v1

    move-object v1, v14

    goto/16 :goto_795

    .line 485
    .end local v1    # "allowType":I
    .restart local v0    # "restrictions":I
    .restart local v20    # "receivedGCM":Z
    .restart local v25    # "allowType":I
    .restart local v26    # "isAllowed":Z
    .restart local v27    # "isMatchRestriction":Z
    .restart local v28    # "level":I
    .restart local v30    # "policyNum":I
    :cond_60f
    :goto_60f
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_628

    .line 486
    const/16 v1, 0x40

    .line 487
    .end local v25    # "allowType":I
    .restart local v1    # "allowType":I
    const/4 v2, 0x1

    .line 488
    .end local v27    # "isMatchRestriction":Z
    .local v2, "isMatchRestriction":Z
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/BaseRestrictionMgr;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v3
    :try_end_61a
    .catchall {:try_start_5ec .. :try_end_61a} :catchall_5fe

    if-eqz v3, :cond_624

    .line 489
    const/4 v3, 0x1

    move/from16 v25, v1

    move/from16 v27, v2

    move/from16 v26, v3

    .end local v26    # "isAllowed":Z
    .local v3, "isAllowed":Z
    goto :goto_628

    .line 488
    .end local v3    # "isAllowed":Z
    .restart local v26    # "isAllowed":Z
    :cond_624
    move/from16 v25, v1

    move/from16 v27, v2

    .line 492
    .end local v1    # "allowType":I
    .end local v2    # "isMatchRestriction":Z
    .restart local v25    # "allowType":I
    .restart local v27    # "isMatchRestriction":Z
    :cond_628
    :goto_628
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_651

    .line 493
    const/16 v27, 0x1

    .line 494
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v19

    move/from16 v8, v30

    :try_start_63e
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v1

    .line 495
    .local v1, "isPolicyBlocked":I
    if-lez v1, :cond_651

    .line 496
    const/4 v2, 0x1

    .line 497
    .end local v26    # "isAllowed":Z
    .local v2, "isAllowed":Z
    const/4 v3, 0x1

    if-ne v1, v3, :cond_64f

    .line 498
    const/16 v3, 0x80

    move/from16 v26, v2

    move/from16 v25, v3

    .end local v25    # "allowType":I
    .local v3, "allowType":I
    goto :goto_651

    .line 497
    .end local v3    # "allowType":I
    .restart local v25    # "allowType":I
    :cond_64f
    move/from16 v26, v2

    .line 620
    .end local v1    # "isPolicyBlocked":I
    .end local v2    # "isAllowed":Z
    .restart local v26    # "isAllowed":Z
    :cond_651
    :goto_651
    if-nez v27, :cond_655

    .line 621
    const/16 v26, 0x1

    .line 623
    :cond_655
    xor-int/lit8 v1, v26, 0x1

    move/from16 v17, v1

    .end local v17    # "isRestricted":Z
    .local v1, "isRestricted":Z
    goto :goto_67e

    .line 649
    .end local v0    # "restrictions":I
    .end local v1    # "isRestricted":Z
    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v20    # "receivedGCM":Z
    .end local v26    # "isAllowed":Z
    .end local v27    # "isMatchRestriction":Z
    .end local v28    # "level":I
    .end local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v30    # "policyNum":I
    .end local v31    # "now":J
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v8, "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    .restart local v17    # "isRestricted":Z
    :catchall_65a
    move-exception v0

    move v13, v5

    move-object/from16 v29, v7

    move-wide/from16 v31, v14

    move-object v14, v6

    move-object v15, v8

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object/from16 v2, v29

    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v8    # "calleePackage":Ljava/lang/String;
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .restart local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v31    # "now":J
    goto/16 :goto_795

    .line 432
    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v31    # "now":J
    .local v0, "level":I
    .local v3, "restrictions":I
    .restart local v4    # "policyNum":I
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v8    # "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    .restart local v20    # "receivedGCM":Z
    :cond_672
    move/from16 v28, v0

    move v0, v3

    move/from16 v30, v4

    move v13, v5

    move-object/from16 v29, v7

    move-wide/from16 v31, v14

    move-object v14, v6

    move-object v15, v8

    .line 627
    .end local v3    # "restrictions":I
    .end local v4    # "policyNum":I
    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v8    # "calleePackage":Ljava/lang/String;
    .local v0, "restrictions":I
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .restart local v28    # "level":I
    .restart local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v30    # "policyNum":I
    .restart local v31    # "now":J
    :goto_67e
    if-nez v17, :cond_68c

    if-eqz v20, :cond_68c

    .line 628
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2, v13}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    .line 629
    const/16 v20, 0x0

    .line 632
    :cond_68c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_6ef

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v15, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1
    :try_end_69e
    .catchall {:try_start_63e .. :try_end_69e} :catchall_769

    if-eqz v1, :cond_6ef

    if-nez v17, :cond_6ef

    .line 633
    move-object/from16 v1, p4

    .line 635
    .end local v16    # "reason":Ljava/lang/String;
    .local v1, "reason":Ljava/lang/String;
    :try_start_6a4
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v15, v13, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    sget-object v2, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hostingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is allowed by freecess, caller is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v18
    :try_end_6da
    .catchall {:try_start_6a4 .. :try_end_6da} :catchall_6dc

    const/4 v2, 0x0

    return v2

    .line 649
    .end local v0    # "restrictions":I
    .end local v20    # "receivedGCM":Z
    .end local v28    # "level":I
    .end local v30    # "policyNum":I
    :catchall_6dc
    move-exception v0

    move-object/from16 v16, v1

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object/from16 v2, v29

    goto/16 :goto_795

    .line 641
    .end local v1    # "reason":Ljava/lang/String;
    .restart local v0    # "restrictions":I
    .restart local v16    # "reason":Ljava/lang/String;
    .restart local v20    # "receivedGCM":Z
    .restart local v28    # "level":I
    .restart local v30    # "policyNum":I
    :cond_6ef
    if-nez v17, :cond_6fc

    if-eqz v14, :cond_6fc

    .line 642
    :try_start_6f3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 645
    :cond_6fc
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_73b

    if-eqz v17, :cond_73b

    .line 646
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hostingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is Restricted by policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v30

    .end local v30    # "policyNum":I
    .local v3, "policyNum":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73d

    .line 645
    .end local v3    # "policyNum":I
    .restart local v30    # "policyNum":I
    :cond_73b
    move/from16 v3, v30

    .line 649
    .end local v0    # "restrictions":I
    .end local v20    # "receivedGCM":Z
    .end local v28    # "level":I
    .end local v30    # "policyNum":I
    :goto_73d
    monitor-exit v18
    :try_end_73e
    .catchall {:try_start_6f3 .. :try_end_73e} :catchall_769

    .line 651
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v0

    if-nez v0, :cond_768

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v0, :cond_768

    .line 652
    iget-object v0, v9, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, v13, :cond_768

    .line 653
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v1

    move/from16 v2, v17

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object v5, v15

    move/from16 v6, v23

    move/from16 v7, v19

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/mars/database/MARsComponentTracker;->trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 657
    :cond_768
    return v17

    .line 649
    :catchall_769
    move-exception v0

    move v3, v13

    move-object v1, v14

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move/from16 v17, v25

    move-object/from16 v2, v29

    goto :goto_795

    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v25    # "allowType":I
    .end local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v31    # "now":J
    .local v2, "isRestricted":Z
    .restart local v5    # "targetPkgUserId":I
    .restart local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v8    # "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    .local v17, "allowType":I
    :catchall_779
    move-exception v0

    move v13, v5

    move-object/from16 v29, v7

    move-wide/from16 v31, v14

    move-object v14, v6

    move-object v15, v8

    move v6, v2

    move v3, v13

    move-object v1, v14

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v5, v23

    move-object/from16 v2, v29

    .end local v5    # "targetPkgUserId":I
    .end local v6    # "target":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v8    # "calleePackage":Ljava/lang/String;
    .restart local v13    # "targetPkgUserId":I
    .local v14, "target":Lcom/android/server/am/MARsPackageInfo;
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .restart local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v31    # "now":J
    goto :goto_795

    .end local v13    # "targetPkgUserId":I
    .end local v15    # "calleePackage":Ljava/lang/String;
    .end local v19    # "targetPkgUid":I
    .end local v21    # "isFreezed":Z
    .end local v23    # "targetAutoRun":I
    .end local v29    # "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v31    # "now":J
    .local v1, "target":Lcom/android/server/am/MARsPackageInfo;
    .local v2, "freezedPkgStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v3, "targetPkgUserId":I
    .local v4, "targetPkgUid":I
    .local v5, "targetAutoRun":I
    .local v6, "isRestricted":Z
    .local v7, "isFreezed":Z
    .restart local v8    # "calleePackage":Ljava/lang/String;
    .local v14, "now":J
    :catchall_78d
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v23, v3

    move-wide/from16 v31, v14

    move-object v15, v8

    .end local v8    # "calleePackage":Ljava/lang/String;
    .end local v14    # "now":J
    .restart local v15    # "calleePackage":Ljava/lang/String;
    .restart local v31    # "now":J
    :goto_795
    :try_start_795
    monitor-exit v18
    :try_end_796
    .catchall {:try_start_795 .. :try_end_796} :catchall_797

    throw v0

    :catchall_797
    move-exception v0

    goto :goto_795
.end method
