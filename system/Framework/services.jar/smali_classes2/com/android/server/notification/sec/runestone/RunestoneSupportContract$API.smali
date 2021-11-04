.class public final Lcom/android/server/notification/sec/runestone/RunestoneSupportContract$API;
.super Ljava/lang/Object;
.source "RunestoneSupportContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 32
    :cond_4
    const/4 v1, 0x0

    .line 33
    .local v1, "match":Z
    const-string/jumbo v2, "sec"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "samsung"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 35
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 36
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v3

    .line 37
    .local v3, "signatures":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_5e

    .line 38
    array-length v4, v3

    move v5, v0

    :goto_2b
    if-ge v5, v4, :cond_5e

    aget-object v6, v3, v5

    .line 39
    .local v6, "signature":Landroid/content/pm/Signature;
    # getter for: Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->IS_ENG:Z
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->access$000()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 40
    # getter for: Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->DEBUG_SIG:Landroid/content/pm/Signature;
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->access$100()Landroid/content/pm/Signature;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 41
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "match":Z
    .local v0, "match":Z
    goto :goto_5e

    .line 44
    .end local v0    # "match":Z
    .restart local v1    # "match":Z
    :cond_42
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_43
    # getter for: Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->SIG:[Landroid/content/pm/Signature;
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->access$200()[Landroid/content/pm/Signature;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5b

    .line 45
    # getter for: Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->SIG:[Landroid/content/pm/Signature;
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->access$200()[Landroid/content/pm/Signature;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_54} :catch_60

    if-eqz v8, :cond_58

    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_5b

    .line 44
    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 38
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v7    # "i":I
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 55
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :cond_5e
    :goto_5e
    nop

    .line 57
    :cond_5f
    return v1

    .line 53
    :catch_60
    move-exception v2

    .line 54
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static isPlatformSignedPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "res":Z
    :try_start_1
    # invokes: Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->getPackageSignatureHexInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "signatureHex":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 78
    # invokes: Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->isPlatformKeySigned(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {p0, v1}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->access$400(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    if-eqz v2, :cond_e

    .line 79
    const/4 v0, 0x1

    .line 84
    .end local v1    # "signatureHex":Ljava/lang/String;
    :cond_e
    nop

    .line 85
    return v0

    .line 82
    :catch_10
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public static isSupportVersion(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgVersion"    # J

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "res":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 63
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1b

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_1b

    .line 64
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_14} :catch_1c

    int-to-long v3, v3

    cmp-long v3, v3, p2

    if-ltz v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    move v0, v2

    .line 68
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1b
    goto :goto_1e

    .line 66
    :catch_1c
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 69
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1e
    return v0
.end method
