.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;

    invoke-direct {v0}, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;-><init>()V

    sput-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/content/SyncOperation;

    check-cast p2, Lcom/android/server/content/SyncOperation;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result p1

    return p1
.end method