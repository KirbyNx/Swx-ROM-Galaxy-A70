.class public Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;
.super Ljava/lang/Object;
.source "LegacyRoleResolutionPolicy.java"

# interfaces
.implements Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LegacyRoleResolutionPol"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private isSettingsApplication(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xd0000

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 165
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_23

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1a

    goto :goto_23

    .line 168
    :cond_1a
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 166
    :cond_23
    :goto_23
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getRoleHolders(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_178

    :cond_c
    goto :goto_49

    :sswitch_d
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_4a

    :sswitch_17
    const-string v0, "android.app.role.EMERGENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_4a

    :sswitch_21
    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_2b
    const-string v0, "android.app.role.HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_4a

    :sswitch_35
    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_4a

    :sswitch_3f
    const-string v0, "android.app.role.SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_4a

    :goto_49
    const/4 v0, -0x1

    :goto_4a
    const/4 v6, 0x0

    if-eqz v0, :cond_131

    if-eq v0, v5, :cond_120

    if-eq v0, v4, :cond_f0

    if-eq v0, v3, :cond_bf

    if-eq v0, v2, :cond_83

    if-eq v0, v1, :cond_72

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to find legacy role holders for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyRoleResolutionPol"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 147
    :cond_72
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "defaultEmergencyApp":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "defaultEmergencyApp":Ljava/lang/String;
    :cond_83
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xd0000

    .line 131
    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 136
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_ad

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_ad

    .line 137
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_ae

    :cond_ad
    nop

    :goto_ae
    move-object v2, v6

    .line 138
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_b8

    invoke-direct {p0, v2, p2}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->isSettingsApplication(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 139
    const/4 v2, 0x0

    .line 141
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_b8
    goto :goto_ba

    .line 142
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_b9
    const/4 v2, 0x0

    .line 144
    .restart local v2    # "packageName":Ljava/lang/String;
    :goto_ba
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_bf
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 117
    move-object v1, v0

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_eb

    .line 118
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_d4
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 121
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_eb

    .line 123
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_ea
    const/4 v1, 0x0

    .line 125
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_eb
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 96
    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_f0
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_default_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_104

    .line 100
    move-object v1, v0

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_11b

    .line 101
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_104
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 106
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_11b

    .line 108
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_11a
    const/4 v1, 0x0

    .line 110
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_11b
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 89
    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_120
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 91
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 69
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_131
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_153

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_151

    .line 75
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 76
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_14f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_14f
    move-object v1, v6

    .line 77
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_172

    .line 78
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_151
    const/4 v1, 0x0

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_172

    .line 80
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_153
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_171

    .line 81
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "defaultAssistant":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16f

    move-object v6, v1

    :cond_16f
    move-object v1, v6

    .line 83
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_172

    .line 84
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_171
    const/4 v1, 0x0

    .line 86
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_172
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_178
    .sparse-switch
        0x1a6aee0d -> :sswitch_3f
        0x27b422c9 -> :sswitch_35
        0x32edda8b -> :sswitch_2b
        0x61734092 -> :sswitch_21
        0x6d529345 -> :sswitch_17
        0x7529d9dc -> :sswitch_d
    .end sparse-switch
.end method
