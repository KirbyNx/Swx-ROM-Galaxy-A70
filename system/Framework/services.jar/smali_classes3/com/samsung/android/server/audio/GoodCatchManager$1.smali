.class Lcom/samsung/android/server/audio/GoodCatchManager$1;
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

    .line 79
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$100(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    goto :goto_41

    .line 85
    :cond_2d
    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$100(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 88
    :cond_41
    :goto_41
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$100(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    goto :goto_41

    .line 95
    :cond_2c
    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    # getter for: Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GoodCatchManager;->access$100(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object v0

    aput-boolean v1, v0, v2

    .line 98
    :cond_41
    :goto_41
    return-void
.end method
