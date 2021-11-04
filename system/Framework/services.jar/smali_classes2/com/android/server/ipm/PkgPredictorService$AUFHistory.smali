.class Lcom/android/server/ipm/PkgPredictorService$AUFHistory;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AUFHistory"
.end annotation


# instance fields
.field curTime:Ljava/lang/String;

.field mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2

    .line 1665
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->mAppInfoList:Ljava/util/ArrayList;

    .line 1667
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->curTime:Ljava/lang/String;

    .line 1668
    return-void
.end method

.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;)V"
        }
    .end annotation

    .line 1670
    .local p2, "aufAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    iput-object p2, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->mAppInfoList:Ljava/util/ArrayList;

    .line 1672
    sget-object p1, Lcom/android/server/ipm/PkgPredictorService;->SCHEDULE_AUF_DATE:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->curTime:Ljava/lang/String;

    .line 1673
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootUpPkgList Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->curTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PkgList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
