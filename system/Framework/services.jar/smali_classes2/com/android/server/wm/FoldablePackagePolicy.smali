.class Lcom/android/server/wm/FoldablePackagePolicy;
.super Lcom/android/server/wm/PolicyImpl;
.source "FoldablePackagePolicy.java"


# static fields
.field private static final CALLBACK_NAME_DISPLAY_COMPAT:Ljava/lang/String; = "displayCompat"

.field private static final CALLBACK_NAME_FIXED_ASPECT_RATIO:Ljava/lang/String; = "fixedAspectRatio"

.field private static final CALLBACK_NAME_HIGH_REFRESH_RATE:Ljava/lang/String; = "highRefreshRate"

.field private static final CALLBACK_NAME_LOW_REFRESH_RATE:Ljava/lang/String; = "lowRefreshRate"

.field private static final CALLBACK_NAME_SCROLL_FILTER:Ljava/lang/String; = "scrollFilter"

.field private static final COMMAND_OPTION_ALLOW_LIST:Ljava/lang/String; = "allowlist"

.field private static final COMMAND_OPTION_BLOCK_LIST:Ljava/lang/String; = "blocklist"

.field private static final POLICY_NAME:Ljava/lang/String; = "FoldablePackagePolicy"

.field public static final POLICY_VALUE_ALLOW_LIST:Ljava/lang/String; = "w"

.field public static final POLICY_VALUE_BLOCK_LIST:Ljava/lang/String; = "b"

.field private static final SET_FIXED_ASPECT_RATIO_COMMAND:Ljava/lang/String; = "-setFixedAspectRatio"

.field private static final SET_FIXED_ASPECT_RATIO_COMMAND_ABBREVIATION:Ljava/lang/String; = "-ratio"

.field private static final SET_FORCE_DISPLAY_COMPAT_COMMAND:Ljava/lang/String; = "-setForceDisplayCompatMode"

.field private static final SET_NON_HIGH_REFRESH_RATE_COMMAND:Ljava/lang/String; = "-setHighRefreshRate"

.field private static final SET_NON_LOW_REFRESH_RATE_COMMAND:Ljava/lang/String; = "-setLowRefreshRate"


# instance fields
.field private mDevelopmentForceResizable:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageConfigurationController;)V
    .registers 5
    .param p1, "controller"    # Lcom/android/server/wm/PackageConfigurationController;

    .line 60
    const-string v0, "FoldablePackagePolicy"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/PolicyImpl;-><init>(Lcom/android/server/wm/PackageConfigurationController;Ljava/lang/String;)V

    .line 61
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    const-string v1, "force_resizable_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    iput-boolean v2, p0, Lcom/android/server/wm/FoldablePackagePolicy;->mDevelopmentForceResizable:Z

    .line 65
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 82
    .local v0, "atmService":Lcom/android/server/wm/ActivityTaskManagerService;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCROLL_FILTER_BLOCK_LIST:Z

    if-eqz v1, :cond_2b

    .line 83
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mScrollFilterBlockList:Lcom/android/server/wm/BlockListManager;

    iget-object v1, v1, Lcom/android/server/wm/BlockListManager;->mCallback:Ljava/util/function/Consumer;

    const-string/jumbo v2, "scrollFilter"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->registerCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 87
    :cond_2b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_LOW_REFRESH_RATE_LIST:Z

    if-eqz v1, :cond_3b

    .line 88
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/android/server/wm/BlockListManager;

    iget-object v1, v1, Lcom/android/server/wm/BlockListManager;->mCallback:Ljava/util/function/Consumer;

    const-string/jumbo v2, "lowRefreshRate"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->registerCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 92
    :cond_3b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_BLOCK_LIST:Z

    if-eqz v1, :cond_4b

    .line 93
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateList:Lcom/android/server/wm/BlockListManager;

    iget-object v1, v1, Lcom/android/server/wm/BlockListManager;->mCallback:Ljava/util/function/Consumer;

    const-string/jumbo v2, "highRefreshRate"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->registerCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 96
    :cond_4b
    return-void
.end method

.method private static copyPackagesToPolicyDataMap([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V
    .registers 6
    .param p0, "packages"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 264
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 265
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v2, p1}, Lcom/android/server/wm/PolicyDataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v2    # "pkgName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    :cond_c
    return-void
.end method


# virtual methods
.method executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 15
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const-string v3, "-setLowRefreshRate"

    const-string v4, "-setHighRefreshRate"

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_ac

    :cond_f
    goto :goto_3e

    :sswitch_10
    const-string v0, "-setFixedAspectRatio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    goto :goto_3f

    :sswitch_1a
    const-string v0, "-ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_3f

    :sswitch_24
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_3f

    :sswitch_2c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_3f

    :sswitch_34
    const-string v0, "-setForceDisplayCompatMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_3f

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    const-string v7, ""

    const-string v8, ":"

    const-string/jumbo v9, "packageName:packageName:..."

    const-string/jumbo v10, "packageName"

    if-eq v0, v2, :cond_7c

    if-eq v0, v1, :cond_4e

    goto :goto_aa

    .line 235
    :cond_4e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_BLOCK_LIST:Z

    if-eqz v0, :cond_aa

    .line 236
    array-length v0, p2

    if-ne v0, v5, :cond_67

    aget-object v0, p2, v6

    if-nez v0, :cond_5a

    goto :goto_67

    .line 242
    :cond_5a
    aget-object v0, p2, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highRefreshRate"

    invoke-virtual {p0, p3, v0, v7, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->executeDebugModeLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 237
    :cond_67
    :goto_67
    const-string v0, "-setHighRefreshRate"

    .line 238
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {p3, v4}, Lcom/android/server/wm/FoldablePackagePolicy;->printOptionsRequires(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 239
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v4, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v4, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    .end local v0    # "cmd":Ljava/lang/String;
    nop

    .line 245
    :goto_7b
    return v5

    .line 221
    :cond_7c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_LOW_REFRESH_RATE_LIST:Z

    if-eqz v0, :cond_aa

    .line 222
    array-length v0, p2

    if-ne v0, v5, :cond_95

    aget-object v0, p2, v6

    if-nez v0, :cond_88

    goto :goto_95

    .line 228
    :cond_88
    aget-object v0, p2, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lowRefreshRate"

    invoke-virtual {p0, p3, v0, v7, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->executeDebugModeLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 223
    :cond_95
    :goto_95
    const-string v0, "-setLowRefreshRate"

    .line 224
    .restart local v0    # "cmd":Ljava/lang/String;
    invoke-static {p3, v3}, Lcom/android/server/wm/FoldablePackagePolicy;->printOptionsRequires(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 225
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v3, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 226
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v3, v1}, Lcom/android/server/wm/FoldablePackagePolicy;->printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    .end local v0    # "cmd":Ljava/lang/String;
    nop

    .line 231
    :goto_a9
    return v5

    .line 249
    :cond_aa
    :goto_aa
    return v6

    nop

    :sswitch_data_ac
    .sparse-switch
        -0x75d50d8f -> :sswitch_34
        -0x711ea67c -> :sswitch_2c
        -0x63203524 -> :sswitch_24
        0x533e63fe -> :sswitch_1a
        0x5df43db4 -> :sswitch_10
    .end sparse-switch
.end method

.method getLocalVersion()I
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/FoldablePackagePolicy;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getPolicyDataMapFromLocal(Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V
    .registers 15
    .param p1, "configurationName"    # Ljava/lang/String;
    .param p2, "outPolicyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FoldablePackagePolicy;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_ba

    :cond_16
    goto :goto_4c

    :sswitch_17
    const-string v1, "displayCompat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v4

    goto :goto_4d

    :sswitch_21
    const-string v1, "fixedAspectRatio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v6

    goto :goto_4d

    :sswitch_2b
    const-string/jumbo v1, "lowRefreshRate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_4d

    :sswitch_36
    const-string/jumbo v1, "highRefreshRate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_4d

    :sswitch_41
    const-string/jumbo v1, "scrollFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v5

    goto :goto_4d

    :goto_4c
    const/4 v1, -0x1

    :goto_4d
    if-eqz v1, :cond_9f

    const-string v7, ""

    if-eq v1, v6, :cond_7b

    if-eq v1, v5, :cond_70

    if-eq v1, v3, :cond_65

    if-eq v1, v2, :cond_5a

    goto :goto_b9

    .line 137
    :cond_5a
    const v1, 0x1070151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, p2}, Lcom/android/server/wm/FoldablePackagePolicy;->copyPackagesToPolicyDataMap([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V

    goto :goto_b9

    .line 132
    :cond_65
    const v1, 0x1070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, p2}, Lcom/android/server/wm/FoldablePackagePolicy;->copyPackagesToPolicyDataMap([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V

    .line 135
    goto :goto_b9

    .line 127
    :cond_70
    const v1, 0x1070166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, p2}, Lcom/android/server/wm/FoldablePackagePolicy;->copyPackagesToPolicyDataMap([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V

    .line 130
    goto :goto_b9

    .line 117
    :cond_7b
    const v1, 0x1070150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    move v3, v4

    :goto_84
    if-ge v3, v2, :cond_9e

    aget-object v8, v1, v3

    .line 120
    .local v8, "pkgName":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "split":[Ljava/lang/String;
    array-length v10, v9

    if-ne v10, v5, :cond_94

    aget-object v10, v9, v6

    goto :goto_95

    .line 122
    :cond_94
    move-object v10, v7

    :goto_95
    nop

    .line 123
    .local v10, "maxAspectRatio":Ljava/lang/String;
    aget-object v11, v9, v4

    invoke-virtual {p2, v11, v10}, Lcom/android/server/wm/PolicyDataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    .end local v10    # "maxAspectRatio":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 125
    :cond_9e
    goto :goto_b9

    .line 109
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_9f
    const v1, 0x107014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-static {v1, v2, p2}, Lcom/android/server/wm/FoldablePackagePolicy;->copyPackagesToPolicyDataMap([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V

    .line 112
    const v1, 0x107014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "b"

    invoke-static {v1, v2, p2}, Lcom/android/server/wm/FoldablePackagePolicy;->copyPackagesToPolicyDataMap([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V

    .line 115
    nop

    .line 142
    :goto_b9
    return-void

    :sswitch_data_ba
    .sparse-switch
        -0x42d36f5b -> :sswitch_41
        0x4cb5bf59 -> :sswitch_36
        0x58acd667 -> :sswitch_2b
        0x5aac927f -> :sswitch_21
        0x78901ee4 -> :sswitch_17
    .end sparse-switch
.end method

.method isDisabledConfiguration(Ljava/lang/String;)Z
    .registers 3
    .param p1, "configurationName"    # Ljava/lang/String;

    .line 168
    iget-boolean v0, p0, Lcom/android/server/wm/FoldablePackagePolicy;->mDevelopmentForceResizable:Z

    if-eqz v0, :cond_16

    .line 169
    const-string v0, "displayCompat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 170
    const-string v0, "fixedAspectRatio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 168
    :goto_17
    return v0
.end method

.method onPolicyDataMapUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/PackageConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "packageConfigurationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/PackageConfiguration;>;"
    return-void
.end method

.method toStringIfNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 254
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 255
    const-string v0, "fixedAspectRatio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 256
    const-string v0, "16:9"

    return-object v0

    .line 259
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/PolicyImpl;->toStringIfNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
