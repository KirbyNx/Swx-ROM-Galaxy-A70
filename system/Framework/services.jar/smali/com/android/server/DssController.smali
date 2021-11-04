.class public Lcom/android/server/DssController;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DssController$Tools;,
        Lcom/android/server/DssController$RunningPackage;,
        Lcom/android/server/DssController$DssAppDate;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DssController"

.field private static sDssController:Lcom/android/server/DssController;


# instance fields
.field private final DEFAULT_CPU_LEVEL:I

.field private final DEFAULT_GAME_SIOP_LEVEL:I

.field private final DEFAULT_GPU_LEVEL:I

.field private final DEFAULT_SCALE:F

.field private final FLOAT_EPSILON:F

.field private final mRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DssController$RunningPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DssController$DssAppDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_GAME_SIOP_LEVEL:I

    .line 51
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_CPU_LEVEL:I

    .line 52
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_GPU_LEVEL:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_SCALE:F

    .line 54
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/android/server/DssController;->FLOAT_EPSILON:F

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method public static getService()Lcom/android/server/DssController;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/android/server/DssController;

    invoke-direct {v0}, Lcom/android/server/DssController;-><init>()V

    sput-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    .line 47
    :cond_b
    sget-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    return-object v0
.end method

.method private static isScaleAllowed()Z
    .registers 1

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method private pidToPkg(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, "pkg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssController$RunningPackage;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DssController$RunningPackage;

    iget-object v3, v3, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 302
    goto :goto_32

    .line 304
    .end local v2    # "pkg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssController$RunningPackage;>;"
    :cond_31
    goto :goto_b

    .line 305
    :cond_32
    :goto_32
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    monitor-enter p0

    .line 207
    :try_start_1
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssController$DssAppDate;-><init>(Lcom/android/server/DssController;)V

    .line 208
    .local v0, "dssAppData":Lcom/android/server/DssController$DssAppDate;
    invoke-virtual {v0, p2}, Lcom/android/server/DssController$DssAppDate;->addPackage(F)V

    .line 209
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 210
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "dssAppData":Lcom/android/server/DssController$DssAppDate;
    .end local p0    # "this":Lcom/android/server/DssController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "scalingFactor":F
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevel"    # I

    monitor-enter p0

    .line 214
    :try_start_1
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssController$DssAppDate;-><init>(Lcom/android/server/DssController;)V

    .line 215
    .local v0, "dssAppData":Lcom/android/server/DssController$DssAppDate;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DssController$DssAppDate;->addPackage(FI)V

    .line 216
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 217
    monitor-exit p0

    return-void

    .line 213
    .end local v0    # "dssAppData":Lcom/android/server/DssController$DssAppDate;
    .end local p0    # "this":Lcom/android/server/DssController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "scalingFactor":F
    .end local p3    # "gameSiopLevel":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FLjava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "gameSiopLevels"    # Ljava/lang/String;

    monitor-enter p0

    .line 221
    :try_start_1
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssController$DssAppDate;-><init>(Lcom/android/server/DssController;)V

    .line 222
    .local v0, "dssAppData":Lcom/android/server/DssController$DssAppDate;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DssController$DssAppDate;->addPackage(FLjava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 224
    monitor-exit p0

    return-void

    .line 220
    .end local v0    # "dssAppData":Lcom/android/server/DssController$DssAppDate;
    .end local p0    # "this":Lcom/android/server/DssController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "scalingFactor":F
    .end local p3    # "gameSiopLevels":Ljava/lang/String;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createScaledConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 397
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 398
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result v0

    .line 399
    .local v0, "dssScale":F
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p1, v1

    .line 400
    invoke-static {p1, v0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .line 402
    .end local v0    # "dssScale":F
    :cond_13
    return-object p1
.end method

.method public declared-synchronized getDssForPackage(Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    .line 172
    .local v0, "dssScale":F
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 173
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DssController$DssAppDate;

    iget v1, v1, Lcom/android/server/DssController$DssAppDate;->mScale:F
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    move v0, v1

    .line 175
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_1a
    monitor-exit p0

    return v0

    .line 170
    .end local v0    # "dssScale":F
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGameSiopLevel(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 192
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$DssAppDate;

    .line 193
    .local v0, "result":Lcom/android/server/DssController$DssAppDate;
    iget v1, v0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return v1

    .line 195
    .end local v0    # "result":Lcom/android/server/DssController$DssAppDate;
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_15
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 190
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 200
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$DssAppDate;

    .line 201
    .local v0, "result":Lcom/android/server/DssController$DssAppDate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 203
    .end local v0    # "result":Lcom/android/server/DssController$DssAppDate;
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_2b
    :try_start_2b
    const-string v0, "0,0"
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    .line 198
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScalingFactor(I)F
    .registers 3
    .param p1, "pid"    # I

    monitor-enter p0

    .line 321
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 321
    .end local p0    # "this":Lcom/android/server/DssController;
    .end local p1    # "pid":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 325
    :try_start_1
    invoke-static {}, Lcom/android/server/DssController;->isScaleAllowed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_b

    .line 326
    monitor-exit p0

    return v1

    .line 328
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 329
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$RunningPackage;

    iget v1, v0, Lcom/android/server/DssController$RunningPackage;->mDssScale:F
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_21

    goto :goto_1f

    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_1e
    nop

    .line 328
    :goto_1f
    monitor-exit p0

    return v1

    .line 324
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWhiteList()Ljava/lang/StringBuilder;
    .registers 9

    monitor-enter p0

    .line 262
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v2, "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 268
    .local v4, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssController$DssAppDate;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DssController$DssAppDate;

    iget v5, v5, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_46

    .line 270
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 271
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DssController$DssAppDate;

    iget v5, v5, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/high16 v7, 0x3f400000    # 0.75f

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_62

    .line 273
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v4    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssController$DssAppDate;>;"
    :cond_62
    :goto_62
    goto :goto_1a

    .line 277
    :cond_63
    const-string v3, "DSS 0.5 Group\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v3, "=============\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 280
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    nop

    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_71

    .line 283
    :cond_87
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v3, "DSS 0.75 Group\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v3, "=============\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 288
    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    nop

    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_9a

    .line 291
    :cond_b0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b5
    .catchall {:try_start_1 .. :try_end_b5} :catchall_b7

    .line 293
    monitor-exit p0

    return-object v0

    .line 261
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_b7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScaledApp(I)Z
    .registers 3
    .param p1, "pid"    # I

    monitor-enter p0

    .line 309
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 309
    .end local p0    # "this":Lcom/android/server/DssController;
    .end local p1    # "pid":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isScaledApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 313
    :try_start_1
    invoke-static {}, Lcom/android/server/DssController;->isScaleAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_24

    .line 316
    :cond_11
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$RunningPackage;

    iget v0, v0, Lcom/android/server/DssController$RunningPackage;->mDssScale:F
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_26

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    :cond_22
    monitor-exit p0

    return v1

    .line 314
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_24
    :goto_24
    monitor-exit p0

    return v1

    .line 312
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;IZ)F
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "forceDisable"    # Z

    monitor-enter p0

    .line 355
    const/high16 v0, 0x3f800000    # 1.0f

    .line 356
    .local v0, "dssScale":F
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_22

    .line 358
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DssController$RunningPackage;

    .line 359
    .local v1, "pkg":Lcom/android/server/DssController$RunningPackage;
    iget-object v3, v1, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget v3, v1, Lcom/android/server/DssController$RunningPackage;->mDssScale:F

    move v0, v3

    .line 361
    .end local v1    # "pkg":Lcom/android/server/DssController$RunningPackage;
    goto :goto_47

    .line 364
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_22
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 365
    if-eqz p3, :cond_32

    move v1, v2

    goto :goto_3c

    :cond_32
    iget-object v1, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DssController$DssAppDate;

    iget v1, v1, Lcom/android/server/DssController$DssAppDate;->mScale:F

    :goto_3c
    move v0, v1

    .line 367
    :cond_3d
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/DssController$RunningPackage;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/server/DssController$RunningPackage;-><init>(Lcom/android/server/DssController;IF)V

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :goto_47
    invoke-static {}, Lcom/android/server/DssController;->isScaleAllowed()Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_51

    if-nez v1, :cond_4f

    .line 370
    monitor-exit p0

    return v2

    .line 372
    .restart local p0    # "this":Lcom/android/server/DssController;
    :cond_4f
    monitor-exit p0

    return v0

    .line 354
    .end local v0    # "dssScale":F
    .end local p0    # "this":Lcom/android/server/DssController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "forceDisable":Z
    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    monitor-enter p0

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$RunningPackage;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_45

    .line 377
    .local v0, "pkg":Lcom/android/server/DssController$RunningPackage;
    if-nez v0, :cond_d

    .line 378
    monitor-exit p0

    return-void

    .line 380
    :cond_d
    :try_start_d
    iget-object v1, v0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3a

    .line 381
    iget-object v1, v0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_34

    iget-object v1, v0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_34

    .line 382
    const-string v1, "DssController"

    const-string v2, "Stopped pid does not match the started pid recorded by DssController!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_34
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 390
    :cond_3a
    iget-object v1, v0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_45

    .line 392
    :goto_43
    monitor-exit p0

    return-void

    .line 375
    .end local v0    # "pkg":Lcom/android/server/DssController$RunningPackage;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 230
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_e
    monitor-exit p0

    return-void

    .line 226
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 406
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result v0

    .line 408
    .local v0, "dssScale":F
    invoke-static {p1, v0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .line 410
    .end local v0    # "dssScale":F
    :cond_d
    return-void
.end method

.method public scaleExistingMergedConfiguration(Landroid/util/MergedConfiguration;Ljava/lang/String;)V
    .registers 4
    .param p1, "config"    # Landroid/util/MergedConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 413
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 414
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result v0

    .line 415
    .local v0, "dssScale":F
    invoke-static {p1, v0}, Lcom/android/server/DssController$Tools;->applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V

    .line 417
    .end local v0    # "dssScale":F
    :cond_d
    return-void
.end method

.method public declared-synchronized setDssForPackage(Ljava/lang/String;F)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    monitor-enter p0

    .line 183
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p2, v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->removePackage(Ljava/lang/String;)V

    goto :goto_17

    .line 186
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DssController;->addPackageData(Ljava/lang/String;F)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    .line 188
    :goto_17
    monitor-exit p0

    return-void

    .line 182
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "scalingFactor":F
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsesOwnResolution(ILjava/lang/String;Z)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "surface"    # Ljava/lang/String;
    .param p3, "use"    # Z

    monitor-enter p0

    .line 337
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 340
    const-string v1, "DssController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to setUsesOwnResolution("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") for a package that isn\'t running!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_3f

    .line 342
    monitor-exit p0

    return-void

    .line 344
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DssController$RunningPackage;

    iget-object v1, v1, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    .line 345
    .local v1, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_3a

    .line 346
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 348
    :cond_3a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3f

    .line 351
    :goto_3d
    monitor-exit p0

    return-void

    .line 336
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1    # "pid":I
    .end local p2    # "surface":Ljava/lang/String;
    .end local p3    # "use":Z
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showAllDSSInfo()V
    .registers 11

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    .local v1, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssController$DssAppDate;>;"
    const-string v2, "DssController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSS PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",  Scale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", GameSiopLevel :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CpuLevel :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", GpuLevel :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DssController$RunningPackage;

    .line 242
    .local v3, "pkg":Lcom/android/server/DssController$RunningPackage;
    iget-object v4, v3, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "pids":Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_99
    iget-object v6, v3, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d0

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 248
    .end local v5    # "i":I
    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_d0
    const-string v5, ""

    .line 249
    .local v5, "surfaces":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d3
    iget-object v7, v3, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10a

    .line 250
    if-eqz v6, :cond_ef

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 251
    :cond_ef
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_d3

    .line 253
    .end local v6    # "i":I
    :cond_10a
    const-string v6, "DssController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tRunning Package - Scale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/DssController$RunningPackage;->mDssScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",\tPIDs: {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v8, v3, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_134

    const-string v8, ""

    goto :goto_14b

    .line 256
    :cond_134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\tFixed Size Surfaces: {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_14b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catchall {:try_start_1 .. :try_end_155} :catchall_159

    .line 258
    .end local v1    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/DssController$DssAppDate;>;"
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pkg":Lcom/android/server/DssController$RunningPackage;
    .end local v4    # "pids":Ljava/lang/String;
    .end local v5    # "surfaces":Ljava/lang/String;
    :cond_155
    goto/16 :goto_b

    .line 259
    :cond_157
    monitor-exit p0

    return-void

    .line 232
    :catchall_159
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized usesOwnResolution(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$RunningPackage;

    .line 333
    .local v0, "pkg":Lcom/android/server/DssController$RunningPackage;
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    .end local p0    # "this":Lcom/android/server/DssController;
    :cond_15
    const/4 v1, 0x0

    :goto_16
    monitor-exit p0

    return v1

    .line 331
    .end local v0    # "pkg":Lcom/android/server/DssController$RunningPackage;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
