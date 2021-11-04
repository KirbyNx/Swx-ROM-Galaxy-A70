.class public final synthetic Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/semclipboard/SemClipboardService;

.field public final synthetic f$1:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field public final synthetic f$2:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$0:Lcom/android/server/semclipboard/SemClipboardService;

    iput-object p2, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$1:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput-object p3, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$2:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput p4, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v1, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$1:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget-object v2, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$2:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget v3, p0, Lcom/android/server/semclipboard/-$$Lambda$SemClipboardService$ckpIsGiKRG2DOCgJX2rn0KlXprU;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->lambda$addData$0$SemClipboardService(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    return-void
.end method
