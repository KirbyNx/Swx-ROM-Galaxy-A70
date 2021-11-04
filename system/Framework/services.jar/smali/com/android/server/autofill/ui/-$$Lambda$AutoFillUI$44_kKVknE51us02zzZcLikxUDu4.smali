.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$10:Landroid/metrics/LogMaker;

.field public final synthetic f$11:Z

.field public final synthetic f$12:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/autofill/ui/PendingUi;

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/ComponentName;

.field public final synthetic f$8:Landroid/service/autofill/SaveInfo;

.field public final synthetic f$9:Landroid/service/autofill/ValueFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$2:I

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    iput-object p5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$4:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$5:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$7:Landroid/content/ComponentName;

    iput-object p9, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$8:Landroid/service/autofill/SaveInfo;

    iput-object p10, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$9:Landroid/service/autofill/ValueFinder;

    iput-object p11, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$10:Landroid/metrics/LogMaker;

    iput-boolean p12, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$11:Z

    iput-boolean p13, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$12:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$2:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$4:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$5:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$7:Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$8:Landroid/service/autofill/SaveInfo;

    iget-object v9, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$9:Landroid/service/autofill/ValueFinder;

    iget-object v10, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$10:Landroid/metrics/LogMaker;

    iget-boolean v11, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$11:Z

    iget-boolean v12, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$44_kKVknE51us02zzZcLikxUDu4;->f$12:Z

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showSaveUi$6$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V

    return-void
.end method
