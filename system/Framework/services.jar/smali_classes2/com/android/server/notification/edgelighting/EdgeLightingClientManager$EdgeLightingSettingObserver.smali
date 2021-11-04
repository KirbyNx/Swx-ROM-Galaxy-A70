.class Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;
.super Landroid/database/ContentObserver;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingSettingObserver"
.end annotation


# instance fields
.field private final DEFAULT_VALUE:I

.field private final EDGE_LIGHTING_SETTING:Landroid/net/Uri;

.field private final EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

.field private final defaultEdgeLighting:Ljava/lang/String;

.field mLastEnabled:Z

.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/Handler;)V
    .registers 9
    .param p2, "handler"    # Landroid/os/Handler;

    .line 623
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 624
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 617
    const-string v1, "edge_lighting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    .line 618
    const-string v2, "edge_lighting_show_condition"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    .line 620
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigDefStatusEdgeLighting"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    .line 621
    const/4 v3, 0x1

    if-eqz v2, :cond_31

    const-string v4, "-defaulton"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    move v2, v0

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    iput v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->DEFAULT_VALUE:I

    .line 625
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->DEFAULT_VALUE:I

    const/4 v5, -0x2

    invoke-static {v2, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_46

    goto :goto_47

    :cond_46
    move v3, v0

    :goto_47
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 626
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 627
    .local p1, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 628
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 629
    return-void
.end method


# virtual methods
.method public isEdgeLightingEnabled()Z
    .registers 2

    .line 672
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 633
    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_d

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 634
    :cond_d
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->DEFAULT_VALUE:I

    const-string v5, "edge_lighting"

    invoke-static {v3, v5, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    .line 635
    .local v3, "newValue":Z
    :goto_24
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onChange - edge_lighting : newValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mLastEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-boolean v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eq v3, v4, :cond_6b

    .line 637
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 638
    if-eqz v3, :cond_6b

    .line 639
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 640
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.edgelighting.EdgeLightingService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :try_start_5b
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_66} :catch_67

    .line 645
    goto :goto_6b

    .line 643
    :catch_67
    move-exception v5

    .line 644
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 650
    .end local v3    # "newValue":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    if-eqz p2, :cond_75

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 651
    :cond_75
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_lighting_show_condition"

    invoke-static {v3, v4, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 652
    .local v0, "showCondition":I
    if-eqz v0, :cond_98

    if-eq v0, v2, :cond_92

    const/4 v2, 0x2

    if-eq v0, v2, :cond_98

    .line 664
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I
    invoke-static {v2, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1302(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)I

    goto :goto_9f

    .line 658
    :cond_92
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I
    invoke-static {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1302(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)I

    .line 659
    goto :goto_9f

    .line 655
    :cond_98
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x3

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I
    invoke-static {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1302(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)I

    .line 656
    nop

    .line 667
    :goto_9f
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange - edge_lighting_show_condition : mCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1300(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v0    # "showCondition":I
    :cond_be
    return-void
.end method

.method public resetEdgeLightingEnabled()V
    .registers 5

    .line 676
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->DEFAULT_VALUE:I

    const-string v2, "edge_lighting"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 677
    return-void
.end method

.method public unregisterContentObserver()V
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 681
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 682
    return-void
.end method
