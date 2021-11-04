.class Lcom/android/server/ipm/NapDataProcessor$RowRecord;
.super Ljava/lang/Object;
.source "NapDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowRecord"
.end annotation


# instance fields
.field bt:I

.field day:I

.field hour:I

.field launch_time:I

.field orientation:I

.field previous1:Ljava/lang/String;

.field previous2:Ljava/lang/String;

.field previous3:Ljava/lang/String;

.field running_pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ipm/NapDataProcessor;

.field userId:I

.field wifi:I


# direct methods
.method constructor <init>(Lcom/android/server/ipm/NapDataProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/NapDataProcessor;

    .line 194
    iput-object p1, p0, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->this$0:Lcom/android/server/ipm/NapDataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
