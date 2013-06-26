.class Lcom/android/deskclock/timer/CountingTimerView$Hundredths;
.super Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Hundredths"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/CountingTimerView;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "paint"
    .parameter "label"
    .parameter "allDigits"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F
    .locals 6
    .parameter "canvas"
    .parameter "time"
    .parameter "x"
    .parameter "y"
    .parameter "yLabel"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #getter for: Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$000(Lcom/android/deskclock/timer/CountingTimerView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, p3, p5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->getLabelWidth()F

    move-result v0

    add-float v4, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F

    move-result v0

    return v0
.end method
