.class Lcom/android/server/ipm/DexPreloader$ADCPRecords;
.super Ljava/lang/Object;
.source "DexPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/DexPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADCPRecords"
.end annotation


# instance fields
.field artSize:J

.field succeed:Z

.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/DexPreloader;I)V
    .registers 5
    .param p2, "size"    # I

    .line 92
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-lez p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->succeed:Z

    .line 94
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->artSize:J

    .line 95
    return-void
.end method
