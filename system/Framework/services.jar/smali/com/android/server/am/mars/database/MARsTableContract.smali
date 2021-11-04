.class public Lcom/android/server/am/mars/database/MARsTableContract;
.super Ljava/lang/Object;
.source "MARsTableContract.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "action"

.field static final ACTION_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field static final ADJUST_TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field static final APP_SIZE_INCREASED:Ljava/lang/String; = "appSizeIncreased"

.field static final BIGDATA_RESTRICTION:Ljava/lang/String; = "bigdataRestriction"

.field static final CALLEE:Ljava/lang/String; = "callee"

.field static final CALLER:Ljava/lang/String; = "caller"

.field static final CURRENT_IMPORTANT_VALUE:Ljava/lang/String; = "currentImportantValue"

.field static final DATA_TRAFFIC_AMOUNT:Ljava/lang/String; = "dataTrafficAmount"

.field static final FIRST_TRIGGER_TIME:Ljava/lang/String; = "firstTriggerTime"

.field static final IS_ALLOWED:Ljava/lang/String; = "isAllowed"

.field static final IS_POLICY_ENABLED:Ljava/lang/String; = "isPolicyEnabled"

.field static final KEY:Ljava/lang/String; = "key"

.field static final KILL_TYPE:Ljava/lang/String; = "killType"

.field static final MAIN_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field static final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field static final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field static final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field static final MARS_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.mars"

.field static final MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

.field static final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field static final MARS_SETTINGS_URI:Landroid/net/Uri;

.field static final NOTIFICATION_UPDATED_COUNT:Ljava/lang/String; = "notificationUpdatedCount"

.field static final PACKAGE_NAME_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field static final REPEAT_TRIGGER_TIME:Ljava/lang/String; = "repeatTriggerTime"

.field static final RESTRICTION:Ljava/lang/String; = "restriction"

.field static final RESTRICTION_TYPE:Ljava/lang/String; = "restrictionType"

.field static final TARGET_CATEGORY:Ljava/lang/String; = "targetCategory"

.field static final TARGET_PACKAGE_CONDITION:Ljava/lang/String; = "condition"

.field static final TARGET_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field static final TRAFFIC_INTERVAL:Ljava/lang/String; = "trafficInterval"

.field static final UNUSED_AUTO_FREEZE_TIME:Ljava/lang/String; = "unusedAutoFreezeTime"

.field static final VALUE:Ljava/lang/String; = "value"

.field static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const-string v0, "content://com.samsung.android.sm.mars/MARs_Policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 9
    const-string v0, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    .line 10
    const-string v0, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    .line 11
    const-string v0, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    .line 12
    const-string v0, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    .line 13
    const-string v0, "content://com.samsung.android.sm.mars/MARs_Settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
