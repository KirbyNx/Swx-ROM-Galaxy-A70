.class Lcom/android/server/ipm/DexPreloader$CacheAPP;
.super Ljava/lang/Object;
.source "DexPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/DexPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheAPP"
.end annotation


# instance fields
.field installTime:J

.field mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

.field mLaunched:I

.field mPkgName:Ljava/lang/String;

.field mSystem:Z

.field removeTime:J

.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;IZJJI)V
    .registers 11
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "s"    # Z
    .param p5, "addapp"    # J
    .param p7, "rvpp"    # J
    .param p9, "size"    # I

    .line 78
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mPkgName:Ljava/lang/String;

    .line 80
    iput-boolean p4, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mSystem:Z

    .line 81
    iput p3, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    .line 82
    iput-wide p5, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    .line 83
    iput-wide p7, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->removeTime:J

    .line 84
    new-instance v0, Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    invoke-direct {v0, p1, p9}, Lcom/android/server/ipm/DexPreloader$ADCPRecords;-><init>(Lcom/android/server/ipm/DexPreloader;I)V

    iput-object v0, p0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    .line 85
    return-void
.end method
