.class Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;
.super Ljava/lang/Object;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Jitter"
.end annotation


# instance fields
.field public mCount1:I

.field public mCount2:I

.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)V
    .registers 2

    .line 872
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount1:I

    .line 874
    return-void
.end method
