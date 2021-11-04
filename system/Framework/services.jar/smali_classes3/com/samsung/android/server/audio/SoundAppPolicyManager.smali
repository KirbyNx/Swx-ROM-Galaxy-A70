.class public Lcom/samsung/android/server/audio/SoundAppPolicyManager;
.super Ljava/lang/Object;
.source "SoundAppPolicyManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BT_GAME_LATENCY_DENY:Ljava/lang/String; = "bt_game_latency_deny"

.field private static final CATEGORY_IDX:I = 0x1

.field public static final KARAOKE_ALLOW:Ljava/lang/String; = "karaoke_allow"

.field public static final MEDIA_BUTTON_DENY:Ljava/lang/String; = "media_button_deny"

.field private static final PACKAGE_IDX:I = 0x0

.field public static final PACKAGE_LIST_VERSION:I = 0x78776398

.field private static final PACKAGE_PROJECTION:[Ljava/lang/String;

.field private static final PACKAGE_TABLE:Ljava/lang/String; = "policy_item/audio"

.field private static final PACKAGE_URI:Landroid/net/Uri;

.field private static final POLICY_VERSION_IDX:I = 0x1

.field public static final SK_TMAP_PACKAGE:Ljava/lang/String; = "com.sk"

.field private static final TAG:Ljava/lang/String; = "SoundAppPolicyManager"

.field private static final VERSION_PROJECTION:[Ljava/lang/String;

.field private static final VERSION_TABLE:Ljava/lang/String; = "policy_list"

.field private static final VERSION_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;


# instance fields
.field private final mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->AUTHORITY_URI:Landroid/net/Uri;

    .line 38
    const-string v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->VERSION_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "policyName"

    const-string v1, "policyVersion"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->VERSION_PROJECTION:[Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "policy_item/audio"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->PACKAGE_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "item"

    const-string v1, "category"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->PACKAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/audio/AudioSettingsHelper;)V
    .registers 2
    .param p1, "settingsHelper"    # Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 61
    return-void
.end method

.method public static getInstance(Lcom/samsung/android/server/audio/AudioSettingsHelper;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    .registers 2
    .param p0, "settingsHelper"    # Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 64
    sget-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;-><init>(Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 67
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    return-object v0
.end method


# virtual methods
.method public getNewAllowListVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 72
    .local v6, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 73
    .local v7, "strNewVersion":Ljava/lang/String;
    :try_start_5
    sget-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->VERSION_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->VERSION_PROJECTION:[Ljava/lang/String;

    const-string v3, "policyName=?"

    const-string v0, "audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_3e

    .line 75
    .local v0, "versionCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_38

    :try_start_19
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_38

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 77
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2c

    move-object v7, v1

    goto :goto_38

    .line 73
    :catchall_2c
    move-exception v1

    if-eqz v0, :cond_37

    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    :try_start_34
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "strNewVersion":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    .end local p1    # "context":Landroid/content/Context;
    :cond_37
    :goto_37
    throw v1

    .line 80
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "strNewVersion":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_38
    :goto_38
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 82
    .end local v0    # "versionCursor":Landroid/database/Cursor;
    :cond_3d
    goto :goto_42

    .line 80
    :catch_3e
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundAppPolicy new version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundAppPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    if-nez v7, :cond_61

    .line 86
    const-string v2, "SoundAppPolicy version value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v0

    .line 90
    :cond_61
    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const/4 v3, 0x0

    const-string v4, "APP_LIST_VERSION"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "strCurVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundAppPolicy current version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 93
    return-object v7

    .line 98
    :cond_8b
    :try_start_8b
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 99
    .local v3, "newVersion":J
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_93} :catch_9a

    .line 103
    .local v8, "curVersion":J
    nop

    .line 105
    cmp-long v1, v3, v8

    if-lez v1, :cond_99

    .line 106
    return-object v7

    .line 108
    :cond_99
    return-object v0

    .line 100
    .end local v3    # "newVersion":J
    .end local v8    # "curVersion":J
    :catch_9a
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SoundAppPolicy version parsing error"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-object v0
.end method

.method public reloadAllowedList(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 140
    .local v6, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v8, 0x1

    if-eqz v0, :cond_14

    move v0, v8

    goto :goto_15

    :cond_14
    move v0, v7

    :goto_15
    move v9, v0

    .line 141
    .local v9, "isSCPMClientExist":Z
    const-string v10, "SoundAppPolicyManager"

    if-nez v9, :cond_20

    .line 142
    const-string v0, "SoundAppPolicy SCPMClient is not exist"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getNewAllowListVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "newVersion":Ljava/lang/String;
    if-nez v11, :cond_2c

    .line 148
    const-string v0, "SoundAppPolicy server version is not latest or incorrect"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_2c
    :try_start_2c
    sget-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->PACKAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->PACKAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_93

    .line 153
    .local v0, "itemCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_8d

    :try_start_3a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8d

    .line 154
    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v2, "APP_LIST_VERSION"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 156
    :goto_50
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 157
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "category":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundAppPolicy reloadWhitelist() add packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_3a .. :try_end_7f} :catchall_81

    .line 162
    nop

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "category":Ljava/lang/String;
    goto :goto_50

    .line 152
    :catchall_81
    move-exception v1

    if-eqz v0, :cond_8c

    :try_start_84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception v2

    :try_start_89
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "isSCPMClientExist":Z
    .end local v11    # "newVersion":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    .end local p1    # "context":Landroid/content/Context;
    :cond_8c
    :goto_8c
    throw v1

    .line 164
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "isSCPMClientExist":Z
    .restart local v11    # "newVersion":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_8d
    if-eqz v0, :cond_92

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_92} :catch_93

    .line 168
    .end local v0    # "itemCursor":Landroid/database/Cursor;
    :cond_92
    goto :goto_9f

    .line 164
    :catch_93
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->setDefaultAllowList()V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9f
    return-void
.end method

.method public setDefaultAllowList()V
    .registers 4

    .line 112
    const-string v0, "SoundAppPolicyManager"

    const-string v1, "SoundAppPolicy setDefaultWhiteList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.miHoYo.GenshinImpact"

    const-string v2, "bt_game_latency_deny"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.miHoYo.Yuanshen"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.riotgames.league.teamfighttactics"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.audiocn.kalaok"

    const-string v2, "karaoke_allow"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.tencent.karaoke"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.tencent.wesing"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.changba"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.app.hero.ui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "cn.banshenggua.aichang"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.kibey.echo"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "cn.kuwo.sing"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.michong.haochang"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.huuhoo.mystyle"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.sm1.EverySing"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.netease.karaoke"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.google.android.youtube"

    const-string v2, "media_button_deny"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.google.android.apps.youtube.kids"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "APP_LIST_VERSION"

    const v2, 0x78776398

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    .line 135
    return-void
.end method
