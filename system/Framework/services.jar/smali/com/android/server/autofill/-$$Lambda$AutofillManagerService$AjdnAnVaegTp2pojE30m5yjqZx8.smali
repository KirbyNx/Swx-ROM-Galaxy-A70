.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$new$0$AutofillManagerService(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
