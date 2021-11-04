.class Lcom/android/server/wm/SluggishDetector$AgingDataQueue$3;
.super Ljava/lang/Object;
.source "SluggishDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    .line 2379
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$3;->this$0:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)I
    .registers 7
    .param p1, "e0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .param p2, "e1"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2382
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$7900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v0

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$7900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2379
    check-cast p1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    check-cast p2, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$3;->compare(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)I

    move-result p1

    return p1
.end method
