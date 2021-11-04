.class Lcom/samsung/android/server/audio/GoodCatchManager$2;
.super Ljava/lang/Object;
.source "GoodCatchManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/GoodCatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/GoodCatchManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager$2;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "function"    # Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$2;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$202(Lcom/samsung/android/server/audio/GoodCatchManager;Z)Z

    .line 107
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .registers 4
    .param p1, "function"    # Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$2;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$202(Lcom/samsung/android/server/audio/GoodCatchManager;Z)Z

    .line 113
    return-void
.end method
