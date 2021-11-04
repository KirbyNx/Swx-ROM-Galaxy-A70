.class Lcom/android/server/wm/SluggishDetector$AgingDataQueue$1;
.super Ljava/lang/Object;
.source "SluggishDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;
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

    .line 2334
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$1;->this$0:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)I
    .registers 6
    .param p1, "e0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .param p2, "e1"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2337
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2100(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v0

    long-to-int v0, v0

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2100(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v1

    long-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2334
    check-cast p1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    check-cast p2, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$1;->compare(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)I

    move-result p1

    return p1
.end method
