.class public final synthetic Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/AbstractClient;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/AbstractClient;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;->f$0:Lcom/samsung/android/mcf/AbstractClient;

    iput-object p2, p0, Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;->f$0:Lcom/samsung/android/mcf/AbstractClient;

    iget-object v1, p0, Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/AbstractClient;->lambda$showDebugToast$0$AbstractClient(Ljava/lang/String;)V

    return-void
.end method
