.class public Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionBase;
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final INDEX_OF_FRS_CMD_APP:I = 0x1

.field private static final MAX_PLATFORM_PKG_COUNT:I = 0xa

.field private static final PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

.field private static final RO_OFFICIAL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ExecAccessMgr"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlatformPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string v2, "com.samsung.android.mateagent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const/16 v5, 0x20

    new-array v5, v5, [B

    fill-array-data v5, :array_2e

    const-string v6, "com.samsung.android.friendscmder"

    invoke-direct {v1, v6, v2, v5, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$1;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    .line 47
    const-string/jumbo v0, "ro.build.official.release"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->RO_OFFICIAL:Ljava/lang/String;

    return-void

    :array_2e
    .array-data 1
        -0x7et
        0x5et
        0x20t
        -0x5bt
        0x5dt
        0x6bt
        -0x30t
        -0x44t
        0x1et
        -0x5et
        -0x11t
        -0x23t
        -0x22t
        -0x61t
        -0x4et
        0x16t
        -0x5ct
        -0x1et
        0x43t
        -0x7ct
        0x39t
        0x3ft
        -0x48t
        -0x3dt
        0x43t
        0x9t
        0x15t
        0x6ct
        0xft
        0x2dt
        -0x7et
        -0x3ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    .line 54
    return-void
.end method

.method private addPlatformPkg(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 213
    return v0

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    .line 217
    :try_start_7
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 219
    .local v2, "exist":Z
    if-nez v2, :cond_24

    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_24

    .line 220
    const-string v3, "ExecAccessMgr"

    const-string v4, "exceeds max count"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    monitor-exit v1

    return v0

    .line 223
    :cond_24
    if-nez v2, :cond_2b

    .line 224
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v2    # "exist":Z
    :cond_2b
    monitor-exit v1

    .line 228
    const/4 v0, 0x1

    return v0

    .line 226
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private static getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 139
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x40

    :try_start_6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 140
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 141
    .local v2, "signatures":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 144
    .local v3, "cert":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_40

    .line 145
    .local v4, "input":Ljava/io/InputStream;
    :try_start_18
    const-string v5, "X509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 146
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_36

    .line 147
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .local v6, "c":Ljava/security/cert/X509Certificate;
    :try_start_24
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 148
    .end local v4    # "input":Ljava/io/InputStream;
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_40

    return-object v4

    .line 144
    .end local v6    # "c":Ljava/security/cert/X509Certificate;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catchall_36
    move-exception v5

    :try_start_37
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v6

    :try_start_3c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_3f
    throw v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 150
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "cert":[B
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_40
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 154
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getRegisteredPlatformPkgs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    .line 233
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private hasPlatformPkg(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    .line 207
    if-eqz p1, :cond_11

    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    .line 208
    :catchall_f
    move-exception v1

    goto :goto_14

    .line 207
    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 208
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_f

    throw v1
.end method

.method public static isCmdAppAccessible(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 158
    sget-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "pkgName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v2, v2, v1

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$200(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B

    move-result-object v2

    .line 160
    .local v2, "fingerprint":[B
    sget-object v3, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v3, v3, v1

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z
    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$300(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z

    move-result v3

    .line 162
    .local v3, "platformKeyOnly":Z
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_39

    :cond_2b
    if-nez v3, :cond_3a

    if-eqz v2, :cond_3a

    .line 165
    invoke-static {p0, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3a

    :cond_39
    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    .line 162
    :goto_3b
    return v1
.end method

.method private isPrivilegedPkg(I)Z
    .registers 15
    .param p1, "uid"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_7b

    array-length v3, v1

    if-nez v3, :cond_12

    goto/16 :goto_7b

    .line 178
    :cond_12
    array-length v3, v1

    move v4, v2

    :goto_14
    const/4 v5, 0x1

    if-ge v4, v3, :cond_36

    aget-object v6, v1, v4

    .line 179
    .local v6, "cur":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 180
    sget-object v7, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v8, v7

    move v9, v2

    :goto_23
    if-ge v9, v8, :cond_33

    aget-object v10, v7, v9

    .line 181
    .local v10, "privPkg":Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    if-eqz v10, :cond_30

    # invokes: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isCachedGranted(Ljava/lang/String;I)Z
    invoke-static {v10, v6, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$400(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 182
    return v5

    .line 180
    .end local v10    # "privPkg":Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 178
    .end local v6    # "cur":Ljava/lang/String;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 189
    :cond_36
    array-length v3, v1

    move v4, v2

    :goto_38
    if-ge v4, v3, :cond_6a

    aget-object v6, v1, v4

    .line 190
    .restart local v6    # "cur":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 191
    iget-object v7, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .line 192
    .local v7, "curFingerprint":[B
    sget-object v8, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v9, v8

    move v10, v2

    :goto_4c
    if-ge v10, v9, :cond_67

    aget-object v11, v8, v10

    .line 193
    .local v11, "privPkg":Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    # invokes: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    invoke-static {v11, v0, v6, v7}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$500(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 194
    # invokes: Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->setCachedGranted(I)V
    invoke-static {v11, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->access$600(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V

    .line 195
    return v5

    .line 192
    .end local v11    # "privPkg":Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    .line 189
    .end local v6    # "cur":Ljava/lang/String;
    .end local v7    # "curFingerprint":[B
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 201
    :cond_6a
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "ExecAccessMgr"

    const-string/jumbo v5, "isPrivilegedPkg uid[%d] is invalid"

    invoke-static {v4, v5, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    return v2

    .line 174
    :cond_7b
    :goto_7b
    return v2
.end method

.method private isRegisteredPlatformPkg(I)Z
    .registers 10
    .param p1, "uid"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 256
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "packages":[Ljava/lang/String;
    const-string v2, "ExecAccessMgr"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3b

    array-length v5, v1

    if-lez v5, :cond_3b

    .line 259
    aget-object v5, v1, v4

    .line 260
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_3b

    invoke-direct {p0, v5}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->hasPlatformPkg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 261
    const-string v6, "android"

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3b

    .line 262
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const-string/jumbo v4, "isRegisteredPlatformPkg pkg[%s] uid[%s] is valid"

    invoke-static {v2, v4, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    return v3

    .line 267
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_3b
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v5, "isRegisteredPlatformPkg uid[%d] is invalid"

    invoke-static {v2, v5, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    return v4
.end method

.method private static isValidAgentSvcActionFormat(I)Z
    .registers 6
    .param p0, "action"    # I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "ret":Z
    const/high16 v1, 0xf0000

    .line 75
    .local v1, "access":I
    const/high16 v2, 0x200000

    and-int/2addr v2, p0

    if-nez v2, :cond_9

    .line 76
    goto :goto_14

    .line 80
    :cond_9
    and-int v2, p0, v1

    if-nez v2, :cond_e

    .line 81
    goto :goto_14

    .line 87
    :cond_e
    and-int/lit16 v2, p0, 0xfff

    if-nez v2, :cond_13

    .line 88
    goto :goto_14

    .line 91
    :cond_13
    const/4 v0, 0x1

    .line 96
    :goto_14
    if-nez v0, :cond_28

    .line 97
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExecAccessMgr"

    const-string/jumbo v4, "invalid action [0x%x]"

    invoke-static {v3, v4, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    :cond_28
    return v0
.end method

.method private static isValidSysSvcActionFormat(I)Z
    .registers 11
    .param p0, "action"    # I

    .line 104
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    .line 106
    .local v1, "mask":[I
    new-array v0, v0, [I

    fill-array-data v0, :array_50

    .line 109
    .local v0, "value":[I
    const/4 v2, 0x0

    .line 110
    .local v2, "index":I
    const/4 v3, 0x0

    .line 111
    .local v3, "valid":I
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v4, :cond_3b

    aget v7, v1, v6

    .line 112
    .local v7, "cur":I
    const/4 v8, 0x2

    if-eq v2, v8, :cond_2c

    const/4 v8, 0x4

    if-eq v2, v8, :cond_23

    .line 125
    aget v8, v0, v2

    and-int v9, p0, v7

    if-ne v8, v9, :cond_35

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 119
    :cond_23
    and-int v8, p0, v7

    aget v9, v0, v2

    if-le v8, v9, :cond_35

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 114
    :cond_2c
    aget v8, v0, v2

    and-int v9, p0, v7

    and-int/2addr v8, v9

    if-eqz v8, :cond_35

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 129
    :cond_35
    :goto_35
    nop

    .end local v7    # "cur":I
    add-int/lit8 v2, v2, 0x1

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 132
    :cond_3b
    add-int/lit8 v4, v3, 0x1

    array-length v6, v1

    if-ne v4, v6, :cond_41

    const/4 v5, 0x1

    :cond_41
    return v5

    :array_42
    .array-data 4
        -0x1000000
        -0x10000000
        0xf0000
        0xf000
        0xfff
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x100000
        0x70000
        0x0
        0x0
    .end array-data
.end method

.method private removePlatformPkg(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "removeAll"    # Z

    .line 238
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    .line 239
    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 240
    :try_start_6
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 241
    monitor-exit v0

    return v1

    .line 248
    :catchall_d
    move-exception v1

    goto :goto_2c

    .line 244
    :cond_f
    if-eqz p1, :cond_20

    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 245
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    return v1

    .line 248
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_d

    .line 250
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecAccessMgr"

    const-string v3, "failed to remove platform pkg"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    return v0

    .line 248
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_d

    throw v1
.end method

.method public static throwSecurityException(ILjava/lang/String;)V
    .registers 10
    .param p0, "reason"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 58
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 60
    .local v1, "pid":I
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    if-eqz p1, :cond_24

    move-object v3, p1

    goto :goto_26

    :cond_24
    const-string v3, ""

    :goto_26
    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "ExecAccessMgr"

    const-string/jumbo v7, "illegal access: uid[%d] / pid[%d] / %d / %s"

    invoke-static {v3, v7, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    new-instance v2, Ljava/lang/SecurityException;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "%s: reason(%d)"

    invoke-static {v4, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "action"    # I

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "ret":Landroid/os/Bundle;
    const-string/jumbo v1, "paramStr0"

    packed-switch p3, :pswitch_data_54

    goto :goto_53

    .line 326
    :pswitch_8
    if-eqz p1, :cond_53

    .line 327
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 328
    const-string/jumbo v3, "paramBool0"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 327
    invoke-direct {p0, v1, v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->removePlatformPkg(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_53

    .line 322
    :pswitch_1f
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getRegisteredPlatformPkgs()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "paramList0"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 323
    goto :goto_53

    .line 316
    :pswitch_33
    if-eqz p1, :cond_53

    .line 317
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->addPlatformPkg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_53

    .line 312
    :pswitch_42
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const/4 v2, 0x4

    const-string/jumbo v3, "paramInt0"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 313
    nop

    .line 333
    :cond_53
    :goto_53
    return-object v0

    :pswitch_data_54
    .packed-switch 0x120006
        :pswitch_42
        :pswitch_33
        :pswitch_1f
        :pswitch_8
    .end packed-switch
.end method

.method public isAccessible(I)Z
    .registers 10
    .param p1, "action"    # I

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 274
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 276
    .local v2, "pid":I
    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isValidSysSvcActionFormat(I)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "ExecAccessMgr"

    const/4 v6, 0x0

    if-nez v3, :cond_19

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isValidAgentSvcActionFormat(I)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 278
    :cond_19
    const/high16 v3, 0x10000

    and-int/2addr v3, p1

    if-eqz v3, :cond_31

    .line 279
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessSystemUid()I

    move-result v3

    if-ne v1, v3, :cond_26

    move v3, v4

    goto :goto_27

    :cond_26
    move v3, v6

    :goto_27
    move v0, v3

    .line 280
    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "system uid"

    invoke-static {v5, v7, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    goto :goto_54

    .line 284
    :cond_31
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_43

    .line 285
    invoke-direct {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isPrivilegedPkg(I)Z

    move-result v0

    .line 286
    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "privileged uid"

    invoke-static {v5, v7, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    goto :goto_54

    .line 290
    :cond_43
    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_54

    .line 291
    invoke-direct {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isRegisteredPlatformPkg(I)Z

    move-result v0

    .line 292
    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "platform key signed pkg"

    invoke-static {v5, v7, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    :cond_54
    :goto_54
    if-nez v0, :cond_72

    .line 300
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string/jumbo v4, "isAccessible returns false / action[0x%x], uid [%d], pid[%d]"

    invoke-static {v5, v4, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    :cond_72
    return v0
.end method
