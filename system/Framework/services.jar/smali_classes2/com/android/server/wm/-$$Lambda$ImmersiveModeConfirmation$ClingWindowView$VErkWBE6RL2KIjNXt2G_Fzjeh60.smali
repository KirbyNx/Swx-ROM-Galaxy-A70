.class public final synthetic Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$VErkWBE6RL2KIjNXt2G_Fzjeh60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$VErkWBE6RL2KIjNXt2G_Fzjeh60;->f$0:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$VErkWBE6RL2KIjNXt2G_Fzjeh60;->f$0:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onConfigurationChanged$2$ImmersiveModeConfirmation$ClingWindowView()V

    return-void
.end method
