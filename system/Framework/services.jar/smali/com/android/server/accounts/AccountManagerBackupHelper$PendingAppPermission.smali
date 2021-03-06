.class final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingAppPermission"
.end annotation


# instance fields
.field private final accountDigest:Ljava/lang/String;

.field private final certDigest:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field private final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p2, "accountDigest"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "certDigest"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 94
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 98
    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 99
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    .line 87
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/pm/PackageManager;)Z
    .registers 14
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    # getter for: Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 104
    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 105
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_10
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_9f

    .line 107
    :try_start_13
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    .line 108
    .local v5, "accountsPerType":[Landroid/accounts/Account;
    array-length v7, v5

    move v8, v6

    :goto_2c
    if-ge v8, v7, :cond_47

    aget-object v9, v5, v8

    .line 109
    .local v9, "accountPerType":Landroid/accounts/Account;
    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    iget-object v11, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 109
    invoke-static {v11}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 111
    move-object v0, v9

    .line 112
    goto :goto_47

    .line 108
    .end local v9    # "accountPerType":Landroid/accounts/Account;
    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 115
    :cond_47
    :goto_47
    if-eqz v0, :cond_4a

    .line 116
    goto :goto_4b

    .line 118
    .end local v5    # "accountsPerType":[Landroid/accounts/Account;
    :cond_4a
    goto :goto_1d

    .line 119
    :cond_4b
    :goto_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_9c

    .line 120
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_9f

    .line 121
    if-nez v0, :cond_50

    .line 122
    return v6

    .line 126
    :cond_50
    :try_start_50
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    iget v4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_5a} :catch_9a

    .line 130
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 137
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "signaturesSha256Digests":[Ljava/lang/String;
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "signaturesSha256Digest":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_7e

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-le v5, v7, :cond_7d

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    aget-object v8, v3, v6

    .line 142
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 143
    :cond_7d
    return v6

    .line 145
    :cond_7e
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 146
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    # getter for: Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$100(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v6

    if-nez v6, :cond_99

    .line 147
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    # getter for: Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v6

    const-string v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 150
    :cond_99
    return v7

    .line 128
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signaturesSha256Digests":[Ljava/lang/String;
    .end local v4    # "signaturesSha256Digest":Ljava/lang/String;
    .end local v5    # "uid":I
    :catch_9a
    move-exception v2

    .line 129
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6

    .line 119
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_9c
    move-exception v4

    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    .end local p1    # "packageManager":Landroid/content/pm/PackageManager;
    :try_start_9e
    throw v4

    .line 120
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    .restart local p1    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_9f
    move-exception v3

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_9f

    throw v3
.end method
