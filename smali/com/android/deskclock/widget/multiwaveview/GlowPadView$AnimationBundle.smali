.class Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/deskclock/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->this$0:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;Lcom/android/deskclock/widget/multiwaveview/GlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/deskclock/widget/multiwaveview/GlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 140
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/multiwaveview/Tweener;

    .line 142
    .local v0, anim:Lcom/android/deskclock/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0           #anim:Lcom/android/deskclock/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 145
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    .line 158
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v3, p0, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 132
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/multiwaveview/Tweener;

    .line 134
    .local v0, anim:Lcom/android/deskclock/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 149
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/multiwaveview/Tweener;

    .line 151
    .local v0, anim:Lcom/android/deskclock/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/deskclock/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0           #anim:Lcom/android/deskclock/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 154
    return-void
.end method
