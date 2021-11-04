.class public Lcom/android/server/ipm/BootUpBooster;
.super Ljava/lang/Object;
.source "BootUpBooster.java"


# static fields
.field private static final DATA_PERIOD:J = 0x3L

.field private static DEBUG:Z = false

.field private static final MAX_AUF_APPLISTS:I = 0x1e

.field private static ONLY_INIT_LIST:Z = false

.field private static final RECORD_TRIGGER_NUM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-BootUpBooster"

.field private static TOPN:I

.field private static initList:[Ljava/lang/String;

.field public static mBootUpPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/BootUpBooster;->ONLY_INIT_LIST:Z

    .line 47
    sput-boolean v0, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    .line 52
    const-string v1, "CONTACTS"

    const-string v2, "com.samsung.android.dialer"

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "MMS"

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.app.clockpackage"

    const-string v7, "CALENDAR"

    const-string v8, "com.sec.android.app.myfiles"

    const-string v9, "com.samsung.android.app.notes"

    const-string v10, "com.sec.android.app.voicenote"

    const-string v11, "com.android.settings"

    const-string v12, "com.sec.android.app.sbrowser"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "candidateNum"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    .line 68
    sput p2, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    .line 69
    iput-object p1, p0, Lcom/android/server/ipm/BootUpBooster;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, ""

    .line 72
    .local v0, "checkname":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    sget-object v2, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 73
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/server/ipm/BootUpBooster;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aput-object v2, v3, v1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 77
    .end local v1    # "i":I
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bootupbooster name check :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService-BootUpBooster"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static declared-synchronized getBoosterPkgList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/ipm/BootUpBooster;

    monitor-enter v0

    .line 96
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    sget v3, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v2, v3, :cond_35

    sget-object v3, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 99
    new-instance v3, Lcom/android/server/ipm/PkgInfo;

    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/PkgInfo;

    iget-object v4, v4, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/PkgInfo;

    iget v5, v5, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 100
    .local v3, "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_37

    .line 98
    nop

    .end local v3    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 103
    .end local v2    # "i":I
    :cond_35
    monitor-exit v0

    return-object v1

    .line 95
    .end local v1    # "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    :catchall_37
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getBoosterPkgList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;"
        }
    .end annotation

    .local p0, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    const-class v0, Lcom/android/server/ipm/BootUpBooster;

    monitor-enter v0

    .line 87
    :try_start_3
    invoke-static {p0}, Lcom/android/server/ipm/BootUpBooster;->getBoosterPkgListByAUF(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    .line 92
    .local v1, "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    monitor-exit v0

    return-object v1

    .line 86
    .end local v1    # "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    .end local p0    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBoosterPkgListByAUF(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;"
        }
    .end annotation

    .local p0, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    const-class v0, Lcom/android/server/ipm/BootUpBooster;

    monitor-enter v0

    .line 107
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    sget-object v2, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 110
    sget-boolean v2, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    if-eqz v2, :cond_29

    .line 111
    const-string v2, "PkgPredictorService-BootUpBooster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONLY_INIT_LIST="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/ipm/BootUpBooster;->ONLY_INIT_LIST:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_29
    sget-boolean v2, Lcom/android/server/ipm/BootUpBooster;->ONLY_INIT_LIST:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7e

    .line 116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_47

    .line 117
    new-instance v4, Lcom/android/server/ipm/PkgInfo;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v4, "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    nop

    .end local v4    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 120
    .end local v2    # "i":I
    :cond_47
    sget-object v2, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7c

    .line 121
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_50
    sget v3, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v2, v3, :cond_7c

    sget-object v3, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 122
    new-instance v3, Lcom/android/server/ipm/PkgInfo;

    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/PkgInfo;

    iget-object v4, v4, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/PkgInfo;

    iget v5, v5, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v3, "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_1c5

    .line 121
    nop

    .end local v3    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 126
    .end local v2    # "i":I
    :cond_7c
    monitor-exit v0

    return-object v1

    .line 129
    :cond_7e
    if-eqz p0, :cond_176

    :try_start_80
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_176

    .line 131
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_af

    const/16 v4, 0x1e

    if-ge v2, v4, :cond_af

    .line 132
    new-instance v4, Lcom/android/server/ipm/PkgInfo;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/PkgInfo;

    iget-object v5, v5, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/PkgInfo;

    iget v6, v6, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v4, v5, v6}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 133
    .restart local v4    # "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    nop

    .end local v4    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 136
    .end local v2    # "i":I
    :cond_af
    sget-boolean v2, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    if-eqz v2, :cond_cc

    .line 137
    const-string v2, "PkgPredictorService-BootUpBooster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBootUpPkgList with AUF pkgs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_cc
    const-string v2, "PkgPredictorService-BootUpBooster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BootUp PkgList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , TOPN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v4, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v2, v4, :cond_147

    .line 140
    sget v2, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v2, v4

    .line 141
    .local v2, "appendNum":I
    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 142
    .local v4, "bubPkgListSize":I
    const/4 v5, 0x0

    .line 143
    .local v5, "appendCnt":I
    const/4 v6, 0x0

    .local v6, "initCnt":I
    :goto_10d
    sget-object v7, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_147

    .line 144
    const/4 v7, 0x0

    .line 145
    .local v7, "is_pkgexist":Z
    const/4 v8, 0x0

    .local v8, "bubCnt":I
    :goto_114
    if-ge v8, v4, :cond_12f

    .line 146
    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aget-object v9, v9, v6

    sget-object v10, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/ipm/PkgInfo;

    iget-object v10, v10, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 147
    const/4 v7, 0x1

    .line 148
    goto :goto_12f

    .line 145
    :cond_12c
    add-int/lit8 v8, v8, 0x1

    goto :goto_114

    .line 151
    .end local v8    # "bubCnt":I
    :cond_12f
    :goto_12f
    if-nez v7, :cond_141

    .line 152
    new-instance v8, Lcom/android/server/ipm/PkgInfo;

    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-direct {v8, v9, v3}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v8, "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v5, v5, 0x1

    .line 156
    .end local v8    # "pkg":Lcom/android/server/ipm/PkgInfo;
    :cond_141
    if-ne v5, v2, :cond_144

    .line 157
    goto :goto_147

    .line 143
    .end local v7    # "is_pkgexist":Z
    :cond_144
    add-int/lit8 v6, v6, 0x1

    goto :goto_10d

    .line 162
    .end local v2    # "appendNum":I
    .end local v4    # "bubPkgListSize":I
    .end local v5    # "appendCnt":I
    .end local v6    # "initCnt":I
    :cond_147
    :goto_147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_148
    sget v3, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v2, v3, :cond_174

    sget-object v3, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_174

    .line 163
    new-instance v3, Lcom/android/server/ipm/PkgInfo;

    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/PkgInfo;

    iget-object v4, v4, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/PkgInfo;

    iget v5, v5, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 164
    .restart local v3    # "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_170
    .catchall {:try_start_80 .. :try_end_170} :catchall_1c5

    .line 162
    nop

    .end local v3    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_148

    .line 166
    .end local v2    # "i":I
    :cond_174
    monitor-exit v0

    return-object v1

    .line 169
    :cond_176
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_177
    :try_start_177
    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_18e

    .line 170
    new-instance v4, Lcom/android/server/ipm/PkgInfo;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 171
    .local v4, "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    nop

    .end local v4    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_177

    .line 173
    .end local v2    # "i":I
    :cond_18e
    sget-object v2, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1c3

    .line 174
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_197
    sget v3, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v2, v3, :cond_1c3

    sget-object v3, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c3

    .line 175
    new-instance v3, Lcom/android/server/ipm/PkgInfo;

    sget-object v4, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/PkgInfo;

    iget-object v4, v4, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/PkgInfo;

    iget v5, v5, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 176
    .restart local v3    # "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1bf
    .catchall {:try_start_177 .. :try_end_1bf} :catchall_1c5

    .line 174
    nop

    .end local v3    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_197

    .line 179
    .end local v2    # "i":I
    :cond_1c3
    monitor-exit v0

    return-object v1

    .line 106
    .end local v1    # "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    .end local p0    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    :catchall_1c5
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBoosterPkgListByNAP()Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/android/server/ipm/BootUpBooster;

    monitor-enter v1

    .line 185
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 186
    .local v2, "pkgLaunchMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 187
    .local v3, "curTime":J
    const-wide/32 v5, 0xf731400

    sub-long v5, v3, v5

    .line 188
    .local v5, "lastTime":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 190
    .local v7, "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    sget-object v0, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v0

    move-object v8, v0

    .line 193
    .local v8, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v8}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_32

    .line 194
    const-string v0, "PkgPredictorService-BootUpBooster"

    const-string v10, "get Dataset failed! db is closed!"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_251

    .line 195
    monitor-exit v1

    return-object v9

    .line 198
    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "select id,running_pkg from "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " where launch_time > "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " and launch_time < "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_251

    move-object v10, v0

    .line 201
    .local v10, "sql":Ljava/lang/String;
    const/4 v11, 0x0

    .line 203
    .local v11, "recordNum":I
    const/4 v12, 0x0

    .line 205
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x1

    :try_start_5a
    invoke-virtual {v8, v10, v9}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 206
    if-eqz v12, :cond_ab

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 207
    :goto_67
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 208
    const-string/jumbo v0, "running_pkg"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "running_pkg":Ljava/lang/String;
    const-string/jumbo v14, "id"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 210
    .local v14, "id":I
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9c

    .line 211
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 213
    :cond_9c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :goto_a3
    if-le v14, v11, :cond_a6

    .line 216
    move v11, v14

    .line 217
    :cond_a6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a9} :catch_b4
    .catchall {:try_start_5a .. :try_end_a9} :catchall_b1

    .line 218
    nop

    .end local v14    # "id":I
    goto :goto_67

    .line 223
    .end local v0    # "running_pkg":Ljava/lang/String;
    :cond_ab
    if-eqz v12, :cond_bb

    .line 224
    :goto_ad
    :try_start_ad
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_251

    goto :goto_bb

    .line 223
    :catchall_b1
    move-exception v0

    goto/16 :goto_24b

    .line 220
    :catch_b4
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b1

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_bb

    .line 224
    goto :goto_ad

    .line 228
    :cond_bb
    :goto_bb
    :try_start_bb
    sget-boolean v0, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    if-eqz v0, :cond_e0

    .line 229
    const-string v0, "PkgPredictorService-BootUpBooster"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "recordNum="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " ONLY_INIT_LIST="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/android/server/ipm/BootUpBooster;->ONLY_INIT_LIST:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_e0
    const/16 v0, 0x64

    if-lt v11, v0, :cond_1fb

    sget-boolean v0, Lcom/android/server/ipm/BootUpBooster;->ONLY_INIT_LIST:Z

    if-ne v0, v13, :cond_ea

    goto/16 :goto_1fb

    .line 248
    :cond_ea
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1f9

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .local v0, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v9, Lcom/android/server/ipm/BootUpBooster$1;

    invoke-direct {v9}, Lcom/android/server/ipm/BootUpBooster$1;-><init>()V

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 256
    sget-boolean v9, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    if-eqz v9, :cond_11c

    .line 257
    const-string v9, "PkgPredictorService-BootUpBooster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sorted launchMap: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_11c
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_170

    .line 259
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_123
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v13

    if-ge v9, v13, :cond_16d

    .line 260
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 261
    .local v13, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 262
    .local v15, "is_exist":Z
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "listCnt":I
    :goto_13a
    sget-object v16, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .end local v0    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v17, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_15b

    .line 263
    sget-object v0, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/PkgInfo;

    iget-object v0, v0, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 264
    const/4 v15, 0x1

    .line 265
    goto :goto_15b

    .line 262
    :cond_156
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    goto :goto_13a

    .line 268
    .end local v14    # "listCnt":I
    :cond_15b
    :goto_15b
    if-nez v15, :cond_168

    .line 269
    new-instance v0, Lcom/android/server/ipm/PkgInfo;

    const/4 v14, 0x0

    invoke-direct {v0, v13, v14}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 270
    .local v0, "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v14, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v0    # "pkg":Lcom/android/server/ipm/PkgInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "is_exist":Z
    :cond_168
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v17

    goto :goto_123

    .end local v17    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v0, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_16d
    move-object/from16 v17, v0

    .end local v0    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v17    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_172

    .line 258
    .end local v9    # "i":I
    .end local v17    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v0    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_170
    move-object/from16 v17, v0

    .line 275
    .end local v0    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v17    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_172
    sget-boolean v0, Lcom/android/server/ipm/BootUpBooster;->DEBUG:Z

    if-eqz v0, :cond_19c

    .line 276
    const-string v0, "PkgPredictorService-BootUpBooster"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BootUp PkgList size: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " , TOPN: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_19c
    sget-object v0, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v9, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v0, v9, :cond_1ca

    .line 278
    sget v0, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v0, v9

    .line 279
    .local v0, "appendNum":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1b0
    if-ge v9, v0, :cond_1ca

    sget-object v13, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    array-length v13, v13

    if-ge v9, v13, :cond_1ca

    .line 280
    new-instance v13, Lcom/android/server/ipm/PkgInfo;

    sget-object v14, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aget-object v14, v14, v9

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 281
    .local v13, "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v14, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    nop

    .end local v13    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b0

    .line 285
    .end local v0    # "appendNum":I
    .end local v9    # "i":I
    :cond_1ca
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1cb
    sget v9, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v0, v9, :cond_1f7

    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_1f7

    .line 286
    new-instance v9, Lcom/android/server/ipm/PkgInfo;

    sget-object v13, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/ipm/PkgInfo;

    iget-object v13, v13, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    sget-object v14, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ipm/PkgInfo;

    iget v14, v14, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v9, v13, v14}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 287
    .local v9, "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f3
    .catchall {:try_start_bb .. :try_end_1f3} :catchall_251

    .line 285
    nop

    .end local v9    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1cb

    .line 289
    .end local v0    # "i":I
    :cond_1f7
    monitor-exit v1

    return-object v7

    .line 292
    .end local v17    # "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1f9
    monitor-exit v1

    return-object v9

    .line 235
    :cond_1fb
    :goto_1fb
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1fc
    :try_start_1fc
    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_214

    .line 236
    new-instance v9, Lcom/android/server/ipm/PkgInfo;

    sget-object v13, Lcom/android/server/ipm/BootUpBooster;->initList:[Ljava/lang/String;

    aget-object v13, v13, v0

    const/4 v14, 0x0

    invoke-direct {v9, v13, v14}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 237
    .restart local v9    # "pkg":Lcom/android/server/ipm/PkgInfo;
    sget-object v13, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    nop

    .end local v9    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fc

    .line 239
    .end local v0    # "i":I
    :cond_214
    sget-object v0, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_249

    .line 240
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21d
    sget v9, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    if-ge v0, v9, :cond_249

    sget-object v9, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_249

    .line 241
    new-instance v9, Lcom/android/server/ipm/PkgInfo;

    sget-object v13, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/ipm/PkgInfo;

    iget-object v13, v13, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    sget-object v14, Lcom/android/server/ipm/BootUpBooster;->mBootUpPkgList:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ipm/PkgInfo;

    iget v14, v14, Lcom/android/server/ipm/PkgInfo;->userId:I

    invoke-direct {v9, v13, v14}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 242
    .restart local v9    # "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_245
    .catchall {:try_start_1fc .. :try_end_245} :catchall_251

    .line 240
    nop

    .end local v9    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_21d

    .line 245
    .end local v0    # "i":I
    :cond_249
    monitor-exit v1

    return-object v7

    .line 223
    :goto_24b
    if-eqz v12, :cond_250

    .line 224
    :try_start_24d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_250
    throw v0
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_251

    .line 184
    .end local v2    # "pkgLaunchMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "curTime":J
    .end local v5    # "lastTime":J
    .end local v7    # "bootUpListCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    .end local v8    # "db":Lcom/android/server/ipm/DBManager;
    .end local v10    # "sql":Ljava/lang/String;
    .end local v11    # "recordNum":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catchall_251
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCalendarPackageName()Ljava/lang/String;
    .registers 5

    .line 353
    const-string v0, "com.samsung.android.calendar"

    .line 354
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 358
    :try_start_12
    iget-object v2, p0, Lcom/android/server/ipm/BootUpBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 359
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_20} :catch_22

    .line 364
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_24

    .line 361
    :catch_22
    move-exception v2

    .line 363
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 366
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_24
    :goto_24
    return-object v1
.end method


# virtual methods
.method public getContactsPackageName()Ljava/lang/String;
    .registers 5

    .line 327
    const-string v0, "com.samsung.android.contacts"

    .line 328
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 331
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 334
    return-object v1

    .line 337
    :cond_23
    return-object v0

    .line 341
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/ipm/BootUpBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 342
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_32} :catch_34

    .line 347
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_36

    .line 344
    :catch_34
    move-exception v2

    .line 346
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 348
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_36
    return-object v1
.end method

.method public getMessagePackageName()Ljava/lang/String;
    .registers 5

    .line 308
    const-string v0, "com.samsung.android.messaging"

    .line 309
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 311
    return-object v0

    .line 316
    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/android/server/ipm/BootUpBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 317
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_23

    .line 320
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_25

    .line 318
    :catch_23
    move-exception v2

    .line 319
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 321
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_25
    return-object v1
.end method

.method public getRealPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 296
    const-string v0, "CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 297
    invoke-virtual {p0}, Lcom/android/server/ipm/BootUpBooster;->getContactsPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_d
    const-string v0, "MMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 299
    invoke-virtual {p0}, Lcom/android/server/ipm/BootUpBooster;->getMessagePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :cond_1a
    const-string v0, "CALENDAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 301
    invoke-direct {p0}, Lcom/android/server/ipm/BootUpBooster;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_27
    return-object p1
.end method

.method public setTOPN(I)V
    .registers 2
    .param p1, "TOPN"    # I

    .line 81
    sput p1, Lcom/android/server/ipm/BootUpBooster;->TOPN:I

    .line 82
    return-void
.end method
