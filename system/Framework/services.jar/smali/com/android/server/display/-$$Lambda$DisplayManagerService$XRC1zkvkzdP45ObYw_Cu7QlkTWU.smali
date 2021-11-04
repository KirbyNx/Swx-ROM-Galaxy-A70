.class public final synthetic Lcom/android/server/display/-$$Lambda$DisplayManagerService$XRC1zkvkzdP45ObYw_Cu7QlkTWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$XRC1zkvkzdP45ObYw_Cu7QlkTWU;->f$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$DisplayManagerService$XRC1zkvkzdP45ObYw_Cu7QlkTWU;->f$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->lambda$addPresentationDisplay$2$DisplayManagerService()V

    return-void
.end method
