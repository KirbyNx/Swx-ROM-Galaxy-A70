.class public Lcom/android/server/am/mars/filter/FilterChainFactory;
.super Ljava/lang/Object;
.source "FilterChainFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;
    }
.end annotation


# static fields
.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_ANGRYBIRD:I = 0xe

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x2

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_AUTORUN:I = 0x3

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_BLOCKLIST:I = 0xd

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_CALM_MODE:I = 0x12

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_CHIMERA:I = 0x11

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_DBUPDATE:I = 0x9

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_DISABLER:I = 0x7

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_EMERGENCYKILL:I = 0xb

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FORCE:I = 0x1

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FREECESS:I = 0x4

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_GAME:I = 0x8

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_LEVEL:I = 0xc

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_MPSM:I = 0x10

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_OLAF:I = 0xa

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_RAGEBIRD:I = 0xf

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_SBIKE:I = 0x6

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_UDS:I = 0x5

.field public static final MAX_COLLECTIONS:I = 0x13


# instance fields
.field private filterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/mars/filter/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterChainFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/FilterChainFactory$1;

    .line 7
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;-><init>()V

    return-void
.end method

.method private getAngryBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 287
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 288
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 289
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 290
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 291
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 292
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 293
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 294
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 295
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 296
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 297
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 298
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 299
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 288
    return-object v1
.end method

.method private getAppLockerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 89
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 90
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 91
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 92
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 93
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 94
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 95
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 96
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 97
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 98
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 99
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 100
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 90
    return-object v1
.end method

.method private getAutoRunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 105
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 106
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 108
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 109
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 110
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 111
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 112
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 113
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 114
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 115
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 116
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 117
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 118
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 119
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 120
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 121
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 122
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 106
    return-object v1
.end method

.method private getBlockListFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 280
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 281
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 282
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 281
    return-object v1
.end method

.method private getCalmModeFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 218
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 219
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 220
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 221
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 222
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 223
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 224
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 225
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 226
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 227
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 219
    return-object v1
.end method

.method private getDBUpdateFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 232
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 233
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 234
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 235
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 236
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 237
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 238
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 239
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 233
    return-object v1
.end method

.method private getDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 184
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 185
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 186
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 187
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 188
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 189
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 190
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 191
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 192
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 193
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 194
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 185
    return-object v1
.end method

.method private getEmergencyKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 254
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 255
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 256
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 257
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 258
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 259
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 260
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 261
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 262
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 263
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 264
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 265
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 266
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 267
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 255
    return-object v1
.end method

.method private getForceFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 76
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 77
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 78
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 79
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 80
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 81
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 82
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 83
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 84
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 77
    return-object v1
.end method

.method private getFreecessFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 127
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 128
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 130
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 131
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 132
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 133
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 134
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 135
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 136
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 137
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 138
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 139
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 128
    return-object v1
.end method

.method private getGameFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 199
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 200
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 201
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 203
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 204
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 205
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 206
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 207
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 208
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 209
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 210
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 211
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 212
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 213
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 200
    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;
    .registers 1

    .line 39
    # getter for: Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->access$100()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    return-object v0
.end method

.method private getLevelFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 272
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 273
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 274
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 275
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 273
    return-object v1
.end method

.method private getMPSMFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 159
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 160
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 161
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 162
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 163
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 164
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 160
    return-object v1
.end method

.method private getOLAFFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 244
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 245
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 246
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 247
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 248
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 249
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 245
    return-object v1
.end method

.method private getRageBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 304
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 305
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 306
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 307
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 308
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 309
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 310
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 311
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 312
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 313
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 314
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 315
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 316
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 305
    return-object v1
.end method

.method private getSBIKERunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 169
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 170
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 171
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 172
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 173
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 174
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 175
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 176
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 177
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 178
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 179
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 170
    return-object v1
.end method

.method private getUDSFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4

    .line 144
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    .line 145
    .local v0, "ff":Lcom/android/server/am/mars/filter/FilterFactory;
    new-instance v1, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    .line 146
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 147
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 148
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 149
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 150
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 151
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 152
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 153
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 154
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    .line 145
    return-object v1
.end method


# virtual methods
.method protected deInit()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    return-void
.end method

.method protected getFilterChain(I)Lcom/android/server/am/mars/filter/FilterChain;
    .registers 4
    .param p1, "index"    # I

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/filter/FilterChain;

    return-object v0
.end method

.method protected init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->setContext(Landroid/content/Context;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getForceFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAppLockerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAutoRunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getFreecessFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getUDSFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getSBIKERunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getGameFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getCalmModeFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getDBUpdateFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getOLAFFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getEmergencyKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getLevelFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getBlockListFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAngryBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getRageBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getMPSMFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method
