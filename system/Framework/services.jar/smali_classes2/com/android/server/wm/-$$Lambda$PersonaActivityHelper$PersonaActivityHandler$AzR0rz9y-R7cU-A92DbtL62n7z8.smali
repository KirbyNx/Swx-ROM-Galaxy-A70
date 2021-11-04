.class public final synthetic Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;->f$0:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;->f$0:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;->f$1:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->lambda$handleMessage$1$PersonaActivityHelper$PersonaActivityHandler(ILcom/android/server/wm/Task;)V

    return-void
.end method
