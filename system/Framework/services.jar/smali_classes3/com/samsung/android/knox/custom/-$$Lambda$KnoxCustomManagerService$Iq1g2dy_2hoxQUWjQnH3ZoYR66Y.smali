.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Iq1g2dy_2hoxQUWjQnH3ZoYR66Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Iq1g2dy_2hoxQUWjQnH3ZoYR66Y;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Iq1g2dy_2hoxQUWjQnH3ZoYR66Y;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$stopProKioskModeInternal$144$KnoxCustomManagerService()V

    return-void
.end method
