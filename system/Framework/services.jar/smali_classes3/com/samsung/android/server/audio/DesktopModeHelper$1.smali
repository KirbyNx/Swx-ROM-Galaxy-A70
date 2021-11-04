.class Lcom/samsung/android/server/audio/DesktopModeHelper$1;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/DesktopModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 8
    .param p1, "state"    # Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 59
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 60
    return-void

    .line 63
    :cond_6
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v3

    .line 64
    .local v0, "enabled":Z
    :goto_f
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 65
    # getter for: Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->access$000(Lcom/samsung/android/server/audio/DesktopModeHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 64
    const-string v4, "audio_output_to_display"

    invoke-static {v2, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    .local v2, "isAudioOutputToDisplay":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEX enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAudioOutputToDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.DesktopModeHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz v0, :cond_43

    if-eqz v2, :cond_43

    .line 68
    if-nez v0, :cond_41

    move v4, v1

    goto :goto_42

    :cond_41
    move v4, v3

    :goto_42
    move v0, v4

    .line 70
    :cond_43
    iget-object v4, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    # getter for: Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z
    invoke-static {v4}, Lcom/samsung/android/server/audio/DesktopModeHelper;->access$100(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z

    move-result v4

    if-eq v4, v0, :cond_6d

    .line 71
    iget-object v4, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    # setter for: Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z
    invoke-static {v4, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->access$102(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)Z

    .line 72
    iget-object v4, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v5

    if-eqz v5, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v3

    :goto_5a
    # setter for: Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z
    invoke-static {v4, v1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->access$202(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)Z

    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    # getter for: Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z
    invoke-static {v1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->access$100(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 74
    const-string v3, "dex"

    goto :goto_6a

    :cond_68
    const-string v3, "none"

    .line 73
    :goto_6a
    # invokes: Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/audio/DesktopModeHelper;->access$300(Lcom/samsung/android/server/audio/DesktopModeHelper;Ljava/lang/String;)V

    .line 76
    :cond_6d
    return-void
.end method
