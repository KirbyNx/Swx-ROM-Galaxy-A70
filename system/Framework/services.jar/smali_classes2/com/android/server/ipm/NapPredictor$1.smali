.class Lcom/android/server/ipm/NapPredictor$1;
.super Ljava/lang/Object;
.source "NapPredictor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/NapPredictor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/NapPredictor;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/NapPredictor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/NapPredictor;

    .line 42
    iput-object p1, p0, Lcom/android/server/ipm/NapPredictor$1;->this$0:Lcom/android/server/ipm/NapPredictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 45
    const-string v0, "/data/system/predictor-model"

    const-string v1, "/data/system/predictor-structure"

    invoke-static {v0, v1}, Lcom/android/server/ipm/NapClassifier;->hasPersist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "PkgPredictorService-NapPredictor"

    if-eqz v2, :cond_1d

    .line 46
    iget-object v2, p0, Lcom/android/server/ipm/NapPredictor$1;->this$0:Lcom/android/server/ipm/NapPredictor;

    new-instance v4, Lcom/android/server/ipm/NapClassifier;

    invoke-direct {v4, v0, v1}, Lcom/android/server/ipm/NapClassifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;
    invoke-static {v2, v4}, Lcom/android/server/ipm/NapPredictor;->access$002(Lcom/android/server/ipm/NapPredictor;Lcom/android/server/ipm/NapClassifier;)Lcom/android/server/ipm/NapClassifier;

    .line 47
    const-string/jumbo v0, "loaded the exist AI built model"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 49
    :cond_1d
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor$1;->this$0:Lcom/android/server/ipm/NapPredictor;

    new-instance v1, Lcom/android/server/ipm/NapClassifier;

    invoke-direct {v1}, Lcom/android/server/ipm/NapClassifier;-><init>()V

    # setter for: Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;
    invoke-static {v0, v1}, Lcom/android/server/ipm/NapPredictor;->access$002(Lcom/android/server/ipm/NapPredictor;Lcom/android/server/ipm/NapClassifier;)Lcom/android/server/ipm/NapClassifier;

    .line 50
    const-string v0, "created a new AI model"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_2c
    return-void
.end method
