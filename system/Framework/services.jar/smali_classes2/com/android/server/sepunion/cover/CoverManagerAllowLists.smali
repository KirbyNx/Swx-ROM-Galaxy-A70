.class Lcom/android/server/sepunion/cover/CoverManagerAllowLists;
.super Ljava/lang/Object;
.source "CoverManagerAllowLists.java"


# static fields
.field private static final SIGNATURE_AMC_1:I = 0x400

.field private static final SIGNATURE_AMC_2:I = 0x800

.field private static final SIGNATURE_CHATONBLUE:I = 0x40

.field private static final SIGNATURE_COUNT:I = 0xe

.field private static final SIGNATURE_LGUUWA:I = 0x10

.field private static final SIGNATURE_MOBILEDESK:I = 0x20

.field private static final SIGNATURE_MSC:I = 0x8

.field private static final SIGNATURE_SAMSUNG_APPLICATION:I = 0x2

.field private static final SIGNATURE_SAMSUNG_PLATFORM:I = 0x1

.field private static final SIGNATURE_SAMSUNG_SHARED:I = 0x4

.field private static final SIGNATURE_SDS:I = 0x1000

.field private static final SIGNATURE_SHEALTH:I = 0x200

.field private static final SIGNATURE_SKT:I = 0x2000

.field private static final SIGNATURE_SOUNDPHONE:I = 0x100

.field private static final SIGNATURE_WHOWHO:I = 0x80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSignaturesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    .line 50
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->setupSignaturesMap()V

    .line 51
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->setupAllowList()V

    .line 52
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->setPrefixPackage()V

    .line 53
    return-void
.end method

.method private convertPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 227
    if-eqz p1, :cond_1c

    .line 228
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "prefixPackage":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 230
    return-object v1

    .line 232
    .end local v1    # "prefixPackage":Ljava/lang/String;
    :cond_1b
    goto :goto_8

    .line 234
    :cond_1c
    return-object p1
.end method

.method private ensureUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 264
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-object p1, v0

    .line 268
    goto :goto_13

    .line 266
    :catch_b
    move-exception v0

    .line 267
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string v2, "Error creating user context"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_13
    return-object p1
.end method

.method private getSignatures(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1e

    .line 240
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 241
    .local v2, "flag":I
    and-int v3, p1, v2

    if-eqz v3, :cond_1b

    .line 242
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v2    # "flag":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 245
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method private hasSamsungKey([Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 209
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method private isMatchedSignature([Landroid/content/pm/Signature;I)Z
    .registers 11
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "type"    # I

    .line 249
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getSignatures(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    .local v0, "SIGNATURES":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    if-eqz v0, :cond_2d

    .line 251
    array-length v2, p1

    move v3, v1

    :goto_b
    if-ge v3, v2, :cond_2d

    aget-object v4, p1, v3

    .line 252
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/Signature;

    .line 253
    .local v6, "s":Landroid/content/pm/Signature;
    if-eqz v6, :cond_29

    invoke-virtual {v6, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 254
    const/4 v1, 0x1

    return v1

    .line 256
    .end local v6    # "s":Landroid/content/pm/Signature;
    :cond_29
    goto :goto_13

    .line 251
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 259
    :cond_2d
    return v1
.end method

.method private setPrefixPackage()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    const-string v1, "com.samsung.radio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method private setupAllowList()V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.samsung.radio"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.uplus.ipagent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.sds.mobiledesk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.sec.chatonblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.ktcs.whowho"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const-string v2, "com.whox2.lguplus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.sec.samsungsoundphone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const-string v2, "com.sec.android.app.shealth:remote"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0xc00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.amc.ui"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.sds.mms.ui"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.skt.prod.dialer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private setupSignaturesMap()V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308203663082024ea00302010202045334d369300d06092a864886f70d01010505003074310b3009060355040613024b52311430120603550408130b4779656f6e6767692d446f310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373310c300a060355040b13034d5343311330110603550403130a4d75736963526164696f3020170d3134303332383031343230315a180f32303634303331393031343230315a3074310b3009060355040613024b52311430120603550408130b4779656f6e6767692d446f310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373310c300a060355040b13034d5343311330110603550403130a4d75736963526164696f30820122300d06092a864886f70d01010105000382010f003082010a028201010083819270421a4a140b6ea27f213a10362b93b58fbc969e35f96941d40570191d767ff2b91927887a5d6829d30177747caa2cc57c7754fb3c59265cae7a5e2419e29c5c0e1925c6019f3cbb38195eee37c7ae8e0fc15d1b1bcac875d821dcd92a7417831c3d14daf1c514ef68d03ff2e50b28a4dab757451d79b84fc7d59fc5024939bd376569bbf53a6bae31faf8c2f7f657d31d30748875fe3329776c95a4da0f8c33fa4d5f9557e8d80bf2113d3f9fadca5d76545887cf59468dabd6cf64785306cf7f301d5cb40238ef97c2b868a7ba94cda3c6f3a30ca8c3b772061628016738d9d5d842ea9d11b00c20ef32ffb8b78e32141b2697389f21bdf1423b79750203010001300d06092a864886f70d0101050500038201010031ab11fb167b839e6f2b02b6e8d5eae010d3fbb20b310817fe350c75d3d2eede4cb53cb781f9a116e64aceeff9b40bd080a83a88286b2d0372e052a75ee2900d655d541ac682bdf18798e88ebb5873947f8c53b8a9d73ab2c536182daa8dafe05f70f87ed0058a8e4d065abe77cb2534083d785ae9577a6d1ca7342c9db0de4d4520d11633f519cbb993a009bc4e1e1973835b61807b48469bacd74b5e849e03aeeb69e2ca6c9cdda29c67196dad838ef8121024dccd3055e53e0f88948ed8291999aef53f401a4b127bccc9d32aa00ffd2169a36b1909c5efcfce2ea77871d510e8e8e6617c5bc84b666ff0340f0ac7e2bbd3609749b54aa8573ec5564441b3"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 72
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082024f308201b8a00302010202045191d845300d06092a864886f70d0101050500306c3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e301e170d3133303531343036323330315a170d3430303932393036323330315a306c3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e30819f300d06092a864886f70d010101050003818d0030818902818100976f29ee7e3a7058d2ace552eebb8839de8e7182f298252ab6996b8fa55fe4f5bfb06fccb6e9460751a213e2bf0112e5b9d71e8db779ec871bc102c464aecc31c539f30d247d56721d0e349d0139fc8b792d35ef2557dcbc45848669934910edf3d3e27ab86ebf84b35003518237d7a1c45f79f51f2c870b367d7d9f063b26e70203010001300d06092a864886f70d0101050500038181006558e803b137ef689516c93a43c2d8c73704633d8380b3377641f9cabf6bcdd11dc7eadd9849aa8a0707e6e37d69a8e757d06d6128cda29e93f08e20b39b55df11d758815e7c67e9a9d382d14c747d5a08a5c9fcc59a850166cff85197c28106f5afd3e9bd9fdaf16d4a9df9daf32ea32b349807d70ae87b0d6a4c945a7cbbec"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 77
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "30820271308201daa00302010202044bced400300d06092a864886f70d0101050500307d310b3009060355040613024b52310e300c0603550408130553656f756c310a3008060355040713012e310c300a060355040a13035344533121301f060355040b1318416e64726f696420446576656c6f706d656e74205465616d3121301f06035504031318416e64726f696420446576656c6f706d656e74205465616d301e170d3130303432313130333132385a170d3337303930363130333132385a307d310b3009060355040613024b52310e300c0603550408130553656f756c310a3008060355040713012e310c300a060355040a13035344533121301f060355040b1318416e64726f696420446576656c6f706d656e74205465616d3121301f06035504031318416e64726f696420446576656c6f706d656e74205465616d30819f300d06092a864886f70d010101050003818d0030818902818100aeed32b2126b38fe1f2ff9d7597e7a80179df0086feea0a1ff021c793f562689facea794dd46aa5c449d47002d44b8aae164eed3705a02409c506b2bcc542af80616df485641354ec3d6f48f5252432ae2e63778f8d6c18e5340a5e00652b02687c744706ff528c6f40138879491f7471c5a3030fd9ddf587bbdc698e17b9c670203010001300d06092a864886f70d0101050500038181000d924d99bafa03701e9ecb5ca787345ae025b0400b09493b655250699a11941a60572d5b9d5037d278f64395ca64df6700bb973dff1250a5ffc180f39d64103ecff7ed042c244ca8ce9fc224b8e027072a7ef78cb753bb962633b04bf3c238995c477172c13258f35b75fa968206c4efd9d99680679bd72b12b2fed5aff7f96a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 82
    const/16 v3, 0x20

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "30820255308201bea00302010202044e07bddb300d06092a864886f70d0101050500306e310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e310c300a060355040a13034d53433110300e060355040b130753616d73756e67311c301a060355040313137777772e73616d73756e672e636f6d2f7365633020170d3131303632363233313634335a180f32313131303630323233313634335a306e310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e310c300a060355040a13034d53433110300e060355040b130753616d73756e67311c301a060355040313137777772e73616d73756e672e636f6d2f73656330819f300d06092a864886f70d010101050003818d0030818902818100a2ac304d1b9f26794cc006ae65ce472b0979a814dc39c56bb5b72fdaacdce7708b9c2ecac6c62bc1333fc492c11bda141ad91ef27f4c267674a8c3b422c04d9453f46cbb4eb805cd8d84db7cbef792cfd432c4a752713d9b7c4579871cad65c92dd84eca72b17fb40a230a7b97816b1926ac58a669babef62eed5c0f7b1f20650203010001300d06092a864886f70d01010505000381810083f3f453b3b2bd4004e1b1a1e50363b16c6b86a070bfb07506c00485f9c23571f4f4d3a10482eb2f184f2d6c3361bb4f4329537834fe7d4715b46eed6fe09618c55a3e4b1b93c2f316a11ab3e101c6752f205a6befec80e83dda7bb11bc8755d4f3e372a6321f345a02b475d7fb12e7bf35864b46e8a248b445d2e135c966a95"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 87
    const/16 v3, 0x40

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308202bb308201a3a00302010202045a83f44a300d06092a864886f70d01010b0500300d310b3009060355040613026b723020170d3133303732303130353931305a180f32313132303632363130353931305a300d310b3009060355040613026b7230820122300d06092a864886f70d01010105000382010f003082010a0282010100c0958b7dbd2510276170b6a2cdb729ed2035b270e295e0c5ba32078cf79f924569ebf5a15bafc6583fdb20d83d87dbfc5be052b2cc9941ff6adac7ccd7feb0ede5ba6608cae3173e904a9218098fe8478c7f184765f833632a84f60923ae82d60aa96b61955847cb1899c615a0fbd185f7cf6324073bf227de6a0caf33321e5db1a7f3612b451c4e46687c34efe87e5d1ef4523b8aa1f0343a12cef42c64a858656c618189d3be2cdd7301dcd07a3cd381096312ac1cc3c32fbabe2259ee79cbe86e01443296554776b5fcde330db76e53efc4612423318f67d2ec1a18352e1382b7a38893fcc3ea32f36d020c756557862df84db1c4db8b7521ef30ddf94ef50203010001a321301f301d0603551d0e041604148e86c5f4c76f088e4ca46688621100a80acf007f300d06092a864886f70d01010b0500038201010028cf439b36a69a3858c22189d16253acca61389705c3ce2355f30f875fe951b34a7ea3a6c5fa60023588ff61e92591942701e7e7f65642676bea889ea98cb9462f62ad6d2c22e2e6f4e5ac617d3d65c26e439da6a62906388640287ce25d4494ff2cadef5b1159150af56d03a90c32bfd2f24fbe1d9a1566213257530feef09ee544e8f752e1f3e75a2381314fcb9d910d58e45facd8603274c1fd879e4b9144b96ba31387c5d9f7f4866299ee89b4bd4f1482090abad4dd4abeba1e780b98682065f619a86a28c3111a631c8a43d028eaaf3cae573ff6a6caf2a85ee87e1c7e14e2e1b3f0239b2fa5e0d664e0c1a1a9ef57898dea32833101adab6c35639895"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 92
    const/16 v3, 0x80

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308201cf30820138a00302010202044e2cb661300d06092a864886f70d0101050500302b310b3009060355040613026b6f310e300c060355040713057375776f6e310c300a060355040313037670733020170d3131303732353030313834315a180f32313131303730313030313834315a302b310b3009060355040613026b6f310e300c060355040713057375776f6e310c300a0603550403130376707330819f300d06092a864886f70d010101050003818d0030818902818100a8ec9f407459acdefd6d4b473a9c4d01b2ccd59cb7983650b3b4426763e31280e1f93d53d73c4cfda81153171dbfe75214c4e44455027325f13e9571d64a9af164bcc79945a4e176aaf6394c50c55b8c9e44bd885b9d5b7ef743e43bcb8d7c405ffbbb664b6b3e25c0deb1b215badcbea137f3e1ae21d65cb8d6392d6e6b52ed0203010001300d06092a864886f70d010105050003818100306be5d67c62bcb63dd5d615e9f67f8bf017c92fb49b6ee1e04eb87926d833d6abb9363aaabdb41215fc1b93bdff34344af43381b3f73c85d2e9a80d84382181b06a127c2a74522c2d3e5f9ed09407e9944e27db4742b3e93c62f5d673f3554f5597766bb4ee17ffd8b0a1073dad7b9e67ab003e985306481dee7898d6a28fac"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 97
    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 102
    const/16 v3, 0x200

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 106
    const/16 v3, 0x400

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v3, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 110
    const/16 v3, 0x800

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 114
    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082030b308201f3a003020102020427ba3599300d06092a864886f70d01010b050030363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d301e170d3133303432353034313334345a170d3433303431383034313334345a30363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100bc1ee71062800dc6ea0aad37ac18de0f5c827a90f64c8ec8c61718e58a675d80e81016872f1f1da06e0f05f8423e0037727adefbd043993244822539158d47b521b5d883a151523ee2f4a2fdd19ac364f29a93c1e05159a8b90902968237edf5931e20ca4d80a76bd5f699430d9dfd57387b49063860fe567780bd7e7b6206fef3e030cd1ec39c324cf8914b1c3b1cf1142f16a18bcf401c87ec1253fb1161cc5b97677973c730e574c54ade32ace9693d36be430fc1191ab42938a54d0b36b11e474a2b859682d21aa78ee1e3d023e738ac704edcdc710e16b267985e65f3647c4b040110fa2c03f91ad4055b2a740dcfc1cab708492b9575902a0f97b807f50203010001a321301f301d0603551d0e0416041402ff5ede4a1a2017d26f1d3e6079083f8ab63dc6300d06092a864886f70d01010b050003820101007f10b1b880d054df5bcaab1204071ee9cc554601b431a886e318a5a600a73c4a0300e4c27d09ddea81d2c9f858baf83dc517b68e760dda559fb2500fbd64c308fc367bc038e39d53794612023b08f759dcf13b7d74002e680a1f661bed3f0aa138325345318ee80566bbe4263d42317fd2ff0746ab78d160dc2af871297f2110fc6db4b270a6b0e45b85de411cb02b881721c655127f1e7678af0c96d7621a1822d9931afe5f1e6bfae05f88a800c0783e2c4bd98b81e9de14f54ff9561a9f1b13fb00c44ca10d62b8a22a601e536440b7090355212594f2cb48fbe8e136c46c9169784e9faf42a417bdd3603cb652f6c6e49d6c7b836d310cdbc14f111e254c"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 118
    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    return-void
.end method


# virtual methods
.method getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .line 214
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 215
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "listRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_26

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 218
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_25

    .line 219
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    .line 221
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_25
    goto :goto_12

    .line 223
    :cond_26
    const/4 v2, 0x0

    return-object v2
.end method

.method isAllowedToUse(Landroid/content/Context;II)Z
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 144
    return v1

    .line 147
    :cond_e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 149
    .local v2, "origId":J
    const/4 v4, 0x0

    .line 150
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v5, -0x1

    .line 151
    .local v5, "packageUid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 152
    .local v6, "packageUser":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v6}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->ensureUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 154
    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 155
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v8, 0x40

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    move-object v4, v8

    .line 156
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_33} :catch_35

    move v5, v8

    .line 162
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_51

    .line 157
    :catch_35
    move-exception v7

    .line 161
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not found for user!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    sget-boolean v7, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v7, :cond_87

    .line 165
    sget-object v7, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAllowedToUse : packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", packageUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_87
    const/4 v7, 0x0

    if-eq v5, p2, :cond_93

    .line 169
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isAllowedToUse : pkg does not match uid"

    invoke-static {v1, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v7

    .line 173
    :cond_93
    if-nez v4, :cond_9e

    .line 174
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isAllowedToUse : pkgInfo is null"

    invoke-static {v1, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v7

    .line 178
    :cond_9e
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x81

    if-eqz v8, :cond_b3

    .line 179
    sget-boolean v7, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v7, :cond_b2

    sget-object v7, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isAllowedToUse : App is system App"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_b2
    return v1

    .line 183
    :cond_b3
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "eng"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 184
    sget-boolean v7, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v7, :cond_c9

    sget-object v7, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isAllowedToUse : build type is eng"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_c9
    return v1

    .line 188
    :cond_ca
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 189
    .local v8, "signatures":[Landroid/content/pm/Signature;
    invoke-direct {p0, v8}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->hasSamsungKey([Landroid/content/pm/Signature;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 190
    sget-boolean v7, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v7, :cond_de

    sget-object v7, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isAllowedToUse : App key is samsung key"

    invoke-static {v7, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_de
    return v1

    .line 194
    :cond_df
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->convertPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 196
    .local v1, "type":Ljava/lang/Integer;
    if-nez v1, :cond_105

    .line 197
    sget-object v9, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllowedToUse : cover manager allow lists does not include this App : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v7

    .line 200
    :cond_105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v8, v7}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result v7

    .line 201
    .local v7, "signatureMatch":Z
    if-eqz v7, :cond_11b

    .line 202
    sget-boolean v9, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v9, :cond_11b

    sget-object v9, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isAllowedToUse : cover manager allow lists match this App"

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_11b
    return v7
.end method
