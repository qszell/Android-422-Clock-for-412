.class public Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageLabelAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClassNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

.field private final mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p4, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p5, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .local p6, packageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .line 750
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 751
    iput-object p4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mStrings:Ljava/util/ArrayList;

    .line 752
    iput-object p5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mDrawables:Ljava/util/ArrayList;

    .line 753
    iput-object p6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mPackageNames:Ljava/util/ArrayList;

    .line 754
    iput-object p7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mClassNames:Ljava/util/ArrayList;

    .line 755
    return-void
.end method

.method public constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "showAllAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 762
    .local p4, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p5, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .local p6, packageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .line 763
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 764
    iput-object p4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mStrings:Ljava/util/ArrayList;

    .line 765
    iput-object p5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mDrawables:Ljava/util/ArrayList;

    .line 766
    iput-object p6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mPackageNames:Ljava/util/ArrayList;

    .line 767
    iput-object p7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mClassNames:Ljava/util/ArrayList;

    .line 768
    iput-object p8, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mShowAllAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    .line 769
    return-void
.end method


# virtual methods
.method public getClassName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mClassNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getShowAllAdapter()Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mShowAllAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 773
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 774
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f04001a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 775
    .local v1, row:Landroid/view/View;
    const v2, 0x7f0e004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 779
    return-object v1
.end method
