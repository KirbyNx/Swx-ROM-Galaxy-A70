.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/service/autofill/FillResponse;

.field public final synthetic f$4:Landroid/view/autofill/AutofillId;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/CharSequence;

.field public final synthetic f$7:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$8:Landroid/metrics/LogMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$2:I

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$3:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$4:Landroid/view/autofill/AutofillId;

    iput-object p6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$6:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$7:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$8:Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$2:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$3:Landroid/service/autofill/FillResponse;

    iget-object v4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$4:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$6:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$7:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$8oLY4Gz0gp6UPCN-oCfPrSpQrP8;->f$8:Landroid/metrics/LogMaker;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillUi$5$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V

    return-void
.end method
