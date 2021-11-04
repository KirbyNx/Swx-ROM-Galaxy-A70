.class Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;
.super Ljava/lang/Object;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateIdle"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-class p1, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;
    .param p2, "x1"    # Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$1;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onNotification()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    # getter for: Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->access$100(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->run(Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;)V

    .line 126
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-direct {v0, v1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)V

    return-object v0
.end method

.method public onRinging()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    # getter for: Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->access$100(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->run(Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;)V

    .line 137
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;I)V

    return-object v0
.end method

.method public onScreenChanged(I)V
    .registers 5
    .param p1, "screenState"    # I

    .line 131
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
