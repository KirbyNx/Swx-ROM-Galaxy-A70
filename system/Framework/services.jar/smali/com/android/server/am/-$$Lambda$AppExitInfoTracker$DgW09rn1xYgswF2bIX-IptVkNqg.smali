.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;

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

    check-cast p1, Landroid/app/ApplicationExitInfo;

    check-cast p2, Landroid/app/ApplicationExitInfo;

    invoke-static {p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$getExitInfo$4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p1

    return p1
.end method
