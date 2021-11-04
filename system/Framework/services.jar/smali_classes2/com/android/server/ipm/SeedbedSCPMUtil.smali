.class public Lcom/android/server/ipm/SeedbedSCPMUtil;
.super Ljava/lang/Object;
.source "SeedbedSCPMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;,
        Lcom/android/server/ipm/SeedbedSCPMUtil$SdbdHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.seedbednet"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field public static DEBUG:Z = false

.field private static final ITEM:Ljava/lang/String; = "item"

.field public static final MSG_CHECK_SPCM_PARAMETERES:I = 0x63

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "seedbednet"

.field public static final SEEDBEDNET_CATEGORY:Ljava/lang/String; = "seedbed_onoff"

.field private static final SEEDBEDNET_ITEM:Ljava/lang/String; = "seedbed_switch"

.field private static final TAG:Ljava/lang/String; = "seedbed-SeedbedSCPMUtil"


# instance fields
.field public final SCPM_URI_DNBANET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSCPMBroadcastReceiver:Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/SeedbedSCPMUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ht"    # Landroid/os/HandlerThread;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/seedbednet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->SCPM_URI_DNBANET:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 53
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;-><init>(Lcom/android/server/ipm/SeedbedSCPMUtil;)V

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mSCPMBroadcastReceiver:Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;

    .line 55
    new-instance v0, Lcom/android/server/ipm/SeedbedSCPMUtil$SdbdHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ipm/SeedbedSCPMUtil$SdbdHandler;-><init>(Lcom/android/server/ipm/SeedbedSCPMUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mHandler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mPm:Landroid/content/pm/PackageManager;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/SeedbedSCPMUtil;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedSCPMUtil;

    .line 29
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/SeedbedSCPMUtil;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedSCPMUtil;

    .line 29
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSCPMPolicyItemFromDB()V
    .registers 11

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 181
    .local v1, "scpmpkg":Ljava/lang/String;
    const-string/jumbo v2, "seedbed-SeedbedSCPMUtil"

    const-string v3, "getSCPMPolicyItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_15
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    move-object v0, v3

    .line 187
    goto :goto_42

    .line 184
    :catch_26
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_42
    if-eqz v0, :cond_ae

    .line 190
    :cond_44
    :goto_44
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 191
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 192
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "item":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "category":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "data1":Ljava/lang/String;
    const-string/jumbo v9, "seedbed_switch"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a9

    const-string/jumbo v9, "seedbed_onoff"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 196
    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 197
    invoke-static {v5}, Lcom/android/server/ipm/SeedbedPreloadController;->switchStaticOnoffSeedBedModule(Z)V

    goto :goto_89

    .line 198
    :cond_7e
    const-string v5, "false"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 199
    invoke-static {v3}, Lcom/android/server/ipm/SeedbedPreloadController;->switchStaticOnoffSeedBedModule(Z)V

    .line 201
    :cond_89
    :goto_89
    sget-boolean v3, Lcom/android/server/ipm/SeedbedSCPMUtil;->DEBUG:Z

    if-eqz v3, :cond_a9

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,scpm pkg: data1 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v4    # "item":Ljava/lang/String;
    .end local v7    # "category":Ljava/lang/String;
    .end local v8    # "data1":Ljava/lang/String;
    :cond_a9
    goto :goto_44

    .line 206
    :cond_aa
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b3

    .line 208
    :cond_ae
    const-string v3, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_b3
    return-void
.end method

.method private hasValidItemFromDB()Z
    .registers 11

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, "scpmpkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "hasValidItem":Z
    const-string/jumbo v3, "seedbed-SeedbedSCPMUtil"

    const-string/jumbo v4, "hasValidItemFromDB!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_17
    iget-object v4, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_28

    move-object v0, v4

    .line 155
    goto :goto_44

    .line 152
    :catch_28
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_44
    if-eqz v0, :cond_7a

    .line 158
    :cond_46
    :goto_46
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 159
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 160
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "item":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "category":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "data1":Ljava/lang/String;
    const-string/jumbo v7, "seedbed_switch"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    const-string/jumbo v7, "seedbed_onoff"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 164
    const/4 v2, 0x1

    .line 165
    goto :goto_76

    .line 167
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "data1":Ljava/lang/String;
    :cond_75
    goto :goto_46

    .line 169
    :cond_76
    :goto_76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_80

    .line 171
    :cond_7a
    const-string/jumbo v4, "hasValidItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_80
    return v2
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 11

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "cursorPolicy":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 121
    .local v1, "isNeedUpdate":Z
    sget-boolean v2, Lcom/android/server/ipm/SeedbedSCPMUtil;->DEBUG:Z

    const-string/jumbo v3, "seedbed-SeedbedSCPMUtil"

    if-eqz v2, :cond_f

    .line 122
    const-string/jumbo v2, "isNeedUpdateSCPMPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 128
    goto :goto_28

    .line 126
    :catch_21
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_28
    if-eqz v0, :cond_72

    .line 130
    :goto_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 131
    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "policyName":Ljava/lang/String;
    const-string/jumbo v4, "policyVersion"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "policyVersion":Ljava/lang/String;
    const-string/jumbo v5, "seedbednet"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x1

    .line 136
    goto :goto_6f

    .line 138
    .end local v2    # "policyName":Ljava/lang/String;
    .end local v4    # "policyVersion":Ljava/lang/String;
    :cond_6e
    goto :goto_2a

    .line 139
    :cond_6f
    :goto_6f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_72
    return v1
.end method

.method private isSCPMAvailable()Z
    .registers 4

    .line 112
    sget-boolean v0, Lcom/android/server/ipm/SeedbedSCPMUtil;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 113
    const-string/jumbo v0, "seedbed-SeedbedSCPMUtil"

    const-string/jumbo v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_d
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2
.end method


# virtual methods
.method public updateSCPMParametersFromDB()V
    .registers 3

    .line 98
    sget-boolean v0, Lcom/android/server/ipm/SeedbedSCPMUtil;->DEBUG:Z

    const-string/jumbo v1, "seedbed-SeedbedSCPMUtil"

    if-eqz v0, :cond_d

    .line 99
    const-string/jumbo v0, "updateSCPMParametersFromDB"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_d
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 102
    return-void

    .line 104
    :cond_14
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 105
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->getSCPMPolicyItemFromDB()V

    goto :goto_2a

    .line 107
    :cond_24
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for dnbanet"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_2a
    return-void
.end method
