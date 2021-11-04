.class Lcom/samsung/server/wallpaper/CMFWallpaper$2;
.super Ljava/lang/Thread;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 131
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 134
    const-string v0, "CMFWallpaper"

    const-string v1, "ColorCodePollingThread run()"

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    const-string v2, "ril.product_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$102(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :goto_12
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$100(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$100(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    :cond_26
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$200(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v1

    if-lez v1, :cond_63

    .line 139
    :try_start_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorCodePollingThread sleep(1000) count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I
    invoke-static {v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$200(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 141
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # --operator for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$206(Lcom/samsung/server/wallpaper/CMFWallpaper;)I
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_52} :catch_53

    .line 144
    goto :goto_59

    .line 142
    :catch_53
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "InterruptedException occurred"

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_59
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$102(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_12

    .line 149
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$100(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$100(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c3

    .line 150
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$100(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "cmfCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") retrieved!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setCMFColorCode(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setDeviceColor(Ljava/lang/String;)V

    .line 154
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_CMF_WALLPAPER:Z

    if-nez v2, :cond_b8

    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # invokes: Lcom/samsung/server/wallpaper/CMFWallpaper;->isOperatorWallpaper()Z
    invoke-static {v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$300(Lcom/samsung/server/wallpaper/CMFWallpaper;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 155
    :cond_b8
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$400(Lcom/samsung/server/wallpaper/CMFWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->updateDefaultWallpaper()V
    :try_end_c3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_63 .. :try_end_c3} :catch_c4

    .line 160
    .end local v1    # "cmfCode":Ljava/lang/String;
    :cond_c3
    goto :goto_ca

    .line 158
    :catch_c4
    move-exception v1

    .line 159
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "IndexOutOfBoundsException occurred on mColorCodePollingThread"

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_ca
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$502(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 162
    return-void
.end method
