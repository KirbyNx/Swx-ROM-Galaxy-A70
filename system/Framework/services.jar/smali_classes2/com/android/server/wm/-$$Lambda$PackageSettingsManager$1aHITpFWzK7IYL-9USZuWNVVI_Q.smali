.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$1aHITpFWzK7IYL-9USZuWNVVI_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageSettingsManager$TaskStarter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager$TaskStarter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$1aHITpFWzK7IYL-9USZuWNVVI_Q;->f$0:Lcom/android/server/wm/PackageSettingsManager$TaskStarter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$1aHITpFWzK7IYL-9USZuWNVVI_Q;->f$0:Lcom/android/server/wm/PackageSettingsManager$TaskStarter;

    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->lambda$killAndRestartTask$1(Lcom/android/server/wm/PackageSettingsManager$TaskStarter;)V

    return-void
.end method
