.class Lcom/android/server/wm/PersonaActivityHelper$1;
.super Landroid/database/ContentObserver;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/PersonaActivityHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/PersonaActivityHelper;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaActivityHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "FINGERPRINT_PLUS_STATE"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v2, v1, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v3, v3, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v3

    .line 147
    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_4f

    const/4 v4, 0x1

    :cond_4f
    # setter for: Lcom/android/server/wm/PersonaActivityHelper;->mDedicatedFingerprintState:Z
    invoke-static {v1, v4}, Lcom/android/server/wm/PersonaActivityHelper;->access$002(Lcom/android/server/wm/PersonaActivityHelper;Z)Z

    .line 150
    :cond_52
    return-void
.end method
