.class public Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
.super Ljava/lang/Object;
.source "LatestProtectedPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;
    }
.end annotation


# static fields
.field private static final PROTECTED_PACKAGES_LIMIT_DEFAULT:I = 0x6

.field private static final PROTECTED_PACKAGES_LIMIT_OLAF:I = 0x2

.field static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatestProtectedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProtectedAppSizeForGame:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$1;

    .line 14
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
    .registers 1

    .line 35
    # getter for: Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v0

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 51
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 54
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 55
    return v0

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 57
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 58
    .local v2, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6e

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 60
    .local v3, "size":I
    add-int/lit8 v4, v3, -0x1

    .line 61
    .local v4, "begin":I
    const/4 v5, 0x0

    .line 63
    .local v5, "end":I
    const/16 v6, 0x8

    const/4 v7, 0x2

    if-eq p4, v6, :cond_35

    const/16 v6, 0xa

    if-eq p4, v6, :cond_30

    const/16 v6, 0x12

    if-eq p4, v6, :cond_35

    goto :goto_3d

    .line 65
    :cond_30
    if-le v3, v7, :cond_3d

    .line 66
    add-int/lit8 v5, v3, -0x2

    goto :goto_3d

    .line 71
    :cond_35
    iget v6, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    if-le v3, v6, :cond_3d

    .line 72
    iget v6, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    sub-int v5, v3, v6

    .line 79
    :cond_3d
    :goto_3d
    move v6, v4

    .local v6, "i":I
    :goto_3e
    if-lt v6, v5, :cond_6e

    .line 80
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 81
    sget-object v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LatestProtectedPackageFilter, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v1

    return v7

    .line 79
    :cond_6b
    add-int/lit8 v6, v6, -0x1

    goto :goto_3e

    .line 86
    .end local v2    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "size":I
    .end local v4    # "begin":I
    .end local v5    # "end":I
    .end local v6    # "i":I
    :cond_6e
    monitor-exit v1

    .line 87
    return v0

    .line 86
    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setContext(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public setLatestProtectedPkg(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 92
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_4b

    .line 93
    monitor-enter v0

    .line 94
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 95
    .local v1, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_33

    .line 96
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 99
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2f

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 103
    :cond_2f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 106
    :cond_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 107
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_3c
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    nop

    .end local v1    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    goto :goto_4b

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v1

    .line 112
    :cond_4b
    :goto_4b
    return-void
.end method

.method public setProtectAppCntForGame(I)V
    .registers 2
    .param p1, "count"    # I

    .line 115
    iput p1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    .line 116
    return-void
.end method
