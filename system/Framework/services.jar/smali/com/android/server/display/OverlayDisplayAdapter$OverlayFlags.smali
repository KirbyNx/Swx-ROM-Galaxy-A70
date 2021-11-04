.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverlayFlags"
.end annotation


# instance fields
.field final mOwnContentOnly:Z

.field final mSecure:Z

.field final mShouldShowSystemDecorations:Z


# direct methods
.method constructor <init>(ZZZ)V
    .registers 4
    .param p1, "secure"    # Z
    .param p2, "ownContentOnly"    # Z
    .param p3, "shouldShowSystemDecorations"    # Z

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-boolean p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 666
    iput-boolean p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    .line 667
    iput-boolean p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    .line 668
    return-void
.end method

.method static parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .registers 9
    .param p0, "flagString"    # Ljava/lang/String;

    .line 671
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 672
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    return-object v0

    .line 678
    :cond_d
    const/4 v0, 0x0

    .line 679
    .local v0, "secure":Z
    const/4 v2, 0x0

    .line 680
    .local v2, "ownContentOnly":Z
    const/4 v3, 0x0

    .line 681
    .local v3, "shouldShowSystemDecorations":Z
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_17
    if-ge v1, v5, :cond_3c

    aget-object v6, v4, v1

    .line 682
    .local v6, "flag":Ljava/lang/String;
    const-string/jumbo v7, "secure"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 683
    const/4 v0, 0x1

    .line 685
    :cond_25
    const-string/jumbo v7, "own_content_only"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 686
    const/4 v2, 0x1

    .line 688
    :cond_2f
    const-string/jumbo v7, "should_show_system_decorations"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 689
    const/4 v3, 0x1

    .line 681
    .end local v6    # "flag":Ljava/lang/String;
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 692
    :cond_3c
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    const-string/jumbo v1, "secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 699
    const-string v1, ", ownContentOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, ", shouldShowSystemDecorations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 701
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    return-object v0
.end method
