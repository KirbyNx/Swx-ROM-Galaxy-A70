.class Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;
.super Ljava/lang/Object;
.source "MdfReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

.field final synthetic val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method constructor <init>(Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->this$0:Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

    iput-object p2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sendSamsungAnalyticsMultiLog()V

    .line 26
    return-void
.end method
