.class Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsComponentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MARsComponentTrackerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/android/server/am/mars/database/MARsComponentTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsComponentTracker;-><init>(Lcom/android/server/am/mars/database/MARsComponentTracker$1;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/database/MARsComponentTracker;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    return-object v0
.end method
